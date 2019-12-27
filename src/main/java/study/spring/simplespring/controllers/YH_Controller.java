package study.spring.simplespring.controllers;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import study.spring.simplespring.helper.MailHelper;
import study.spring.simplespring.helper.PageData;
import study.spring.simplespring.helper.RegexHelper;
import study.spring.simplespring.helper.UploadItem;
import study.spring.simplespring.helper.WebHelper;
import study.spring.simplespring.model.Board;
import study.spring.simplespring.model.Reply;
import study.spring.simplespring.model.ReqMatch;
import study.spring.simplespring.model.User;
import study.spring.simplespring.service.BoardService;
import study.spring.simplespring.service.ReplyService;
import study.spring.simplespring.service.ReqMatchService;
import study.spring.simplespring.service.UserService;

@Controller
public class YH_Controller {

	@Autowired
	WebHelper webHelper;

	@Autowired
	BoardService boardService;

	@Autowired
	RegexHelper regexHelper;
	
	@Autowired
	ReqMatchService reqMatchService;
	
	@Autowired
	ReplyService replyService;
	
	@Autowired
	UserService userService;

	@Autowired
	MailHelper mailHelper;

	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	// 관리자 페이지 게시판 관리 (공지사항) 
	@RequestMapping(value = "/_admin/admin_userManagement_YH.do", method = RequestMethod.GET)
	public ModelAndView list(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		/** 1) 필요한 변수값 생성 */
		String keyword = webHelper.getString("keyword", ""); // 검색어
		int nowPage = webHelper.getInt("page", 1); // 페이지 번호 (기본값 1)
		int totalCount = 0; // 전체 게시글 수
		int listCount = 10; // 한 페이지당 표시할 목록 수
		int pageCount = 5; // 한 그룹당 표시할 페이지 번호 수

		String UserName = loginInfo.getUserName();
		int MemberId = loginInfo.getMemberId();
		int BoardId = webHelper.getInt("BoardId");

		/** 2) 데이터 조회하기 */
		// 조회에 필요한 조건값(검색어)를 Beans에 담는다.
		Board input = new Board();
		input.setTitle(keyword);
		input.setUserName(UserName);
		input.setMemberId(MemberId);
		input.setBoardId(BoardId);

		List<Board> output = null; // 조회결과가 저장될 객체
		PageData pageData = null; // 페이지 번호를 계산한 결과가 저장될 객체

		try {
			// 전체 게시글 수 조회
			totalCount = boardService.getBoardCount(input);
			// 페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
			pageData = new PageData(nowPage, totalCount, listCount, pageCount);

			// SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
			Board.setOffset(pageData.getOffset());
			Board.setListCount(pageData.getListCount());

			// 데이터 조회하기
			output = boardService.getBoardListadminNotice(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		/** 3) View 처리 */
		model.addAttribute("keyword", keyword);
		model.addAttribute("output", output);
		model.addAttribute("pageData", pageData);

		return new ModelAndView("_admin/admin_userManagement_YH");

	}
	
	// 관리자 페이지 게시판 관리 (공지사항 게시글 추가)
	@RequestMapping(value = "/_admin/admin_userManagementadd.do", method = RequestMethod.GET)
	public ModelAndView add(Model model) {
		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {

			String login = loginInfo.getUserName();

			model.addAttribute("login", login);
		}
		return new ModelAndView("_admin/admin_userManagementadd");

	}
	// 관리자 페이지 게시판 관리 (공지사항 게시글 추가)
	@RequestMapping(value = "/_admin/admin_userManagementaddOk.do", method = RequestMethod.POST)
	public ModelAndView addOk(Model model) {
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		Integer MemberId = (Integer) loginInfo.getMemberId();
		
		try {
			webHelper.upload();
		} catch (Exception e) {
			e.printStackTrace();
		}

		
		List<UploadItem> fileList = webHelper.getFileList();
		Map<String, String> paramMap = webHelper.getParamMap();

		String Title = paramMap.get("Title");
		String Content = paramMap.get("Content");
		String ContentImg = fileList.get(0).getFilePath();
		String CreationDate = webHelper.getString("CreationDate");
		
		Board input = new Board();
		input.setContent(Content);
		input.setTitle(Title);
		input.setMemberId(MemberId);
		input.setCreationDate(CreationDate);
		input.setContentImg(ContentImg);

		try {
			// 데이터 저장
			// --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
			boardService.addBoardNotice(input);

		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		// View에 추가

		String redirectUrl = contextPath + "/_admin/admin_userManagementview.do?BoardId=" + input.getBoardId();
		return webHelper.redirect(redirectUrl, "공지사항이 등록되었습니다.");

	}
	
	// 관리자 페이지 게시판 관리 (공지사항 게시글 보기)
	@RequestMapping(value = "/_admin/admin_userManagementview.do", method = RequestMethod.GET)
	public ModelAndView view(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {

			String login = loginInfo.getUserName();

			model.addAttribute("login", login);
		}

		int BoardId = webHelper.getInt("BoardId");
		String Title = webHelper.getString("Title");
		int viewcount = webHelper.getInt("viewcount");
		String ContentImg = webHelper.getString("ContentImg");
		
		if (BoardId == 0) {
			return webHelper.redirect(null, "공지사항이 없습니다.");
		}

		Board input = new Board();
		input.setBoardId(BoardId);
		input.setTitle(Title);
		input.setContentImg(ContentImg);
		
		Board input1 = new Board();
		input1.setViewcount(viewcount);
		input1.setBoardId(BoardId);
		
		
		int output1 = 0;
		Board output = null;
		Board prevBoard = null;
		Board nextBoard = null;
		
		
		try {
			// 데이터 조회
			output1 = boardService.editviewcount(input1);
			output = boardService.getBoardNotice(input);
			prevBoard = boardService.getNextDocument(input);
			nextBoard = boardService.getPrevDocument(input);
			
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("nextBoard",nextBoard);
		model.addAttribute("prevBoard",prevBoard);
		model.addAttribute("output1",output1);
		model.addAttribute("output", output);
		return new ModelAndView("_admin/admin_userManagementview");
	}
	
	// 관리자 페이지 게시판 관리 (공지사항 게시글 수정)
	@RequestMapping(value = "/_admin/admin_userManagementedit.do", method = RequestMethod.GET)
	public ModelAndView adminUseredit(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {

			String login = loginInfo.getUserName();

			model.addAttribute("login", login);
		}

		int BoardId = webHelper.getInt("BoardId");
		String Content = webHelper.getString("Content");
		String Title = webHelper.getString("Title");

		if (BoardId == 0) {
			return webHelper.redirect(null, "공지사항이 없습니다.");
		}

		Board input = new Board();
		input.setBoardId(BoardId);
		input.setTitle(Title);
		input.setContent(Content);

		Board output = null;

		try {
			output = boardService.getBoardNotice(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		model.addAttribute("output", output);
		return new ModelAndView("_admin/admin_userManagementedit");

	}
	
	// 관리자 페이지 게시판 관리 (공지사항 게시글 수정 )
	@RequestMapping(value = "/_admin/admin_userManagementeditOk.do", method = RequestMethod.POST)
	public ModelAndView admin_Useredit_ok(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		int BoardId = webHelper.getInt("BoardId");
		String Title = webHelper.getString("Title");
		String Content = webHelper.getString("Content");
		int MemberId = loginInfo.getMemberId();
		int Category = webHelper.getInt("Category");
		String CreationDate = webHelper.getString("CreationDate");

		if (BoardId == 0) {
			return webHelper.redirect(null, "공지사항이 없습니다.");
		}

		Board input = new Board();
		input.setContent(Content);
		input.setTitle(Title);
		input.setMemberId(MemberId);
		input.setCategory(Category);
		input.setCreationDate(CreationDate);
		input.setBoardId(BoardId);

		try {
			boardService.editBoardNotice(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		String redirectUrl = contextPath + "/_admin/admin_userManagement_YH.do";
		return webHelper.redirect(redirectUrl, "공지사항이 수정 되었습니다.");

	}
	
	// 관리자 페이지 게시판 관리 (공지사항 게시글 삭제)
	@RequestMapping(value = "/_admin/admin_userManagementdeleteOk.do", method = RequestMethod.GET)
	public ModelAndView delete_ok(Model model) {

		int BoardId = webHelper.getInt("BoardId");

		if (BoardId == 0) {
			return webHelper.redirect(null, "공지사항 게시글이 없습니다.");
		}

		Board input = new Board();
		input.setBoardId(BoardId);

		try {
			// 데이터 삭제
			boardService.deleteBoardNotice(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		return webHelper.redirect(contextPath + "/_admin/admin_userManagement_YH.do", "삭제되었습니다.");
	}
	
	// 관리자 페이지 신청 현황
	@RequestMapping(value = "/_admin/admin_userApply_YH.do", method = RequestMethod.GET)
	public ModelAndView userApplyview(Model model) {
		/** 1) 필요한 변수값 생성 */
		String keyword = webHelper.getString("keyword", ""); // 검색어
		int nowPage = webHelper.getInt("page", 1); // 페이지 번호 (기본값 1)
		int totalCount = 0; // 전체 게시글 수
		int listCount = 10; // 한 페이지당 표시할 목록 수
		int pageCount = 5; // 한 그룹당 표시할 페이지 번호 수
		
		
		
		int ReqMatchId = webHelper.getInt("ReqMatchId");
		String start = webHelper.getString("start");
		String Title = webHelper.getString("Title");
		int MemberId = webHelper.getInt("MemberId");
		String Select_Date = webHelper.getString("Select_Date");
		int ReqSpService = webHelper.getInt("ReqSpService");
		
		/** 데이터 조회하기 */
		// 데이터 조회에 필요한 조건값을 Beans에 저장하기
		ReqMatch input = new ReqMatch();
		input.setStart(start);
		input.setMemberId(MemberId);
		input.setTitle(Title);
		input.setReqMatchId(ReqMatchId);
		input.setUserName(keyword);
		input.setSelect_Date(Select_Date);
		input.setReqSpService(ReqSpService);
		
		// 조회결과를 저장할 객체 선언
		List<ReqMatch> output = null;
		PageData pageData = null; // 페이지 번호를 계산한 결과가 저장될 객체
		
		try {
			// 전체 게시글 수 조회
			totalCount = reqMatchService.getReqMatchCount(input);
			// 페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
			pageData = new PageData(nowPage, totalCount, listCount, pageCount);

			ReqMatch.setOffset(pageData.getOffset());
			ReqMatch.setListCount(pageData.getListCount());
			// 데이터 조회
			output = reqMatchService.getReqMatchList(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		/** 3) View 처리 */
		model.addAttribute("keyword", keyword);
		model.addAttribute("output", output);
		model.addAttribute("pageData", pageData);

		return new ModelAndView("_admin/admin_userApply_YH");

	}
	
	// 관리자 페이지 신청 현황 삭제
	@RequestMapping(value = "/_admin/admin_userApply_YHdeleteOk.do", method = RequestMethod.GET)
	public ModelAndView userApplydelete_ok(Model model) {
		
		int ReqMatchId = webHelper.getInt("ReqMatchId");

		if (ReqMatchId == 0) {
			return webHelper.redirect(null, "신청현황이 없습니다.");
		}
		
		ReqMatch input = new ReqMatch();
		input.setReqMatchId(ReqMatchId);
		
		try {
			// 데이터 삭제
			reqMatchService.deleteReqMatch(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		return webHelper.redirect(contextPath + "/_admin/admin_userApply_YH.do", "신청 취소 되었습니다.");
	}
	
	// My 페이지 1:1문의 하기
	@RequestMapping(value = "/_mypage/1_1questionEmpty_YH.do", method = RequestMethod.GET)
	public ModelAndView view(Model model, HttpServletRequest request, HttpServletResponse response) {
		
		int nowPage    = webHelper.getInt("page", 1);           // 페이지 번호 (기본값 1)
	    int totalCount = 0;                                     // 전체 게시글 수
	    int listCount  = 10;                                    // 한 페이지당 표시할 목록 수
	    int pageCount  = 5;                                     // 한 그룹당 표시할 페이지 번호 수
	    
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		HttpSession session = request.getSession();
		session.setMaxInactiveInterval(60*60);
		
		if (loginInfo != null) {

			String login = loginInfo.getUserName();

			model.addAttribute("login", login);
		}
		
		if (loginInfo == null) {
			String redirectUrl = contextPath + "/_login/login_HG.do";
			return webHelper.redirect(redirectUrl, "로그인 후 이용해주세요.");
		}

		String UserName = loginInfo.getUserName();
		int MemberId = loginInfo.getMemberId();
		String Title = webHelper.getString("Title");
		String Content = webHelper.getString("Content");
		String CreationDate = webHelper.getString("CreationDate");
		int Category = webHelper.getInt("Category");
		
		Board input = new Board();
		input.setUserName(UserName);
		input.setTitle(Title);
		input.setContent(Content);
		input.setCreationDate(CreationDate);
		input.setCategory(Category);
		input.setMemberId(MemberId);
		
		PageData pageData = null;
		List<Board> output = null;
		try {

			totalCount = boardService.getBoardCount(input);
			pageData = new PageData(nowPage,totalCount,listCount,pageCount);
			
			Board.setOffset(pageData.getOffset());
			Board.setListCount(pageData.getListCount());
			
			output = boardService.getBoardList1_1(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		// View에 추가
		model.addAttribute("pageData",pageData);
		model.addAttribute("output", output);
		return new ModelAndView("_mypage/1_1questionEmpty_YH");

	}
	
	// My 페이지 1:1문의글 추가
	@RequestMapping(value = "/_mypage/1_1questionadd.do", method = RequestMethod.GET)
	public ModelAndView questionadd(Model model) {
		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {

			String login = loginInfo.getUserName();

			model.addAttribute("login", login);
		}

		return new ModelAndView("_mypage/1_1questionadd");

	}
	
	// My 페이지 1:1문의글 추가 
	@RequestMapping(value = "/_mypage/1_1questionadd_Ok.do", method = RequestMethod.POST)
	public ModelAndView questionaddOk(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		int MemberId = loginInfo.getMemberId();
		String Title = webHelper.getString("Title");
		String Content = webHelper.getString("Content");
		int Category = webHelper.getInt("Category");
		String CreationDate = webHelper.getString("CreationDate");

		Board input = new Board();
		input.setContent(Content);
		input.setTitle(Title);
		input.setMemberId(MemberId);
		input.setCategory(Category);
		input.setCreationDate(CreationDate);

		try {
			// 데이터 저장
			// --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
			boardService.addBoard1_1(input);

		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		// View에 추가

		String redirectUrl = contextPath + "/_mypage/1_1questionview.do?BoardId=" + input.getBoardId();
		return webHelper.redirect(redirectUrl, "1:1 문의글이 등록되었습니다.");

	}
	
	// My 페이지 1:1문의 게시글 보기
	@RequestMapping(value = "/_mypage/1_1questionview.do", method = RequestMethod.GET)
	public ModelAndView wait(Model model, HttpServletRequest request, HttpServletResponse response) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {

			String login = loginInfo.getUserName();

			model.addAttribute("login", login);
		}

		int BoardId = webHelper.getInt("BoardId");
		String Re_Content = webHelper.getString("Re_Content");
		
		if (BoardId == 0) {
			return webHelper.redirect(null, "문의내역이 없습니다.");
		}
		Board input = new Board();
		input.setBoardId(BoardId);

		Reply input1 = new Reply();
		input1.setBoardId(BoardId);
		input1.setRe_Content(Re_Content);
		
		Board output = null;
		List<Reply> output1 = null;
		
		try {
			// 데이터 조회
			output1 = replyService.getReplya1_1admin(input1);
			output = boardService.getBoardItem1_1(input);
			
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("output1",output1);
		model.addAttribute("output", output);
		return new ModelAndView("_mypage/1_1questionview");

	}
	
	// My 페이지 1:1문의 게시글 수정하기
	@RequestMapping(value = "/_mypage/1_1questionedit.do", method = RequestMethod.GET)
	public ModelAndView edit(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {

			String login = loginInfo.getUserName();

			model.addAttribute("login", login);
		}
		
		int BoardId = webHelper.getInt("BoardId");
		
		if (BoardId == 0) {
			return webHelper.redirect(null, "문의내역이 없습니다.");
		}
		
		Board input = new Board();
		input.setBoardId(BoardId);
		
		Board output = null;
		
		try {
			output = boardService.getBoardItem1_1(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("output",output);
		return new ModelAndView("_mypage/1_1questionedit");

	}
	
	// My 페이지 1:1문의 게시글 수정하기
	@RequestMapping(value = "/_mypage/1_1questioneditOk.do", method = RequestMethod.POST)
	public ModelAndView edit_ok(Model model) {
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		int BoardId = webHelper.getInt("BoardId");
		String Title = webHelper.getString("Title");
		String Content = webHelper.getString("Content");
		int MemberId = loginInfo.getMemberId();
		int Category = webHelper.getInt("Category");
		String CreationDate = webHelper.getString("CreationDate");
		
		if (BoardId == 0) {
			return webHelper.redirect(null, "문의내역이 없습니다.");
		}
		
		Board input = new Board();
		input.setContent(Content);
		input.setTitle(Title);
		input.setMemberId(MemberId);
		input.setCategory(Category);
		input.setCreationDate(CreationDate);
		input.setBoardId(BoardId);
		
		try {
			boardService.editBoard1_1(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		String redirectUrl = contextPath + "/_mypage/1_1questionEmpty_YH.do";
        return webHelper.redirect(redirectUrl, "1:1문의 글이 수정 되었습니다.");

	}
	
	@RequestMapping(value = "/_mypage/deleteOk.do", method = RequestMethod.GET)
	public ModelAndView ex(Model model) {
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		int MemberId = loginInfo.getMemberId();
		int isSpUser = loginInfo.getIsSpUser();
		int ReqMatchId = webHelper.getInt("ReqMatchId");
		
		ReqMatch input = new ReqMatch();
		input.setMemberId(MemberId);
		input.setReqMatchId(ReqMatchId);
		
		ReqMatch output = null;
		
		User input1 = new User();
		input1.setMemberId(MemberId);
		input1.setIsSpUser(isSpUser);
		
		if (isSpUser == 1) {
			try {
				// 데이터 조회
				output = reqMatchService.getReqMatchItem(input);
				if(output.getReqMatchId() != 0) {
					
					loginInfo.setIsSpUser(0);
					webHelper.setSession("loginInfo", loginInfo);
					
					try {
						// 데이터 삭제
						userService.editreqMatch_isSpUserupdateUser(input1);
						reqMatchService.deleteReqMatch(output);
					} catch (Exception e) {
						return webHelper.redirect(null, e.getLocalizedMessage());
					}
					
					return webHelper.redirect(contextPath + "/_mypage/search_SE.do", "데이트 신청 날짜가 취소 되었습니다.");
					
				}
			} catch (Exception e) {
				return webHelper.redirect(null, e.getLocalizedMessage());
			}
		}

		return webHelper.redirect(contextPath + "/_mypage/search_SE.do", "신청 취소 되었습니다.");
	}
	@RequestMapping(value = "/_service/SpecialService_YH.do", method = RequestMethod.GET)
	public String SpecialService(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

	      if (loginInfo != null) {

	         String login = loginInfo.getUserName();

	         model.addAttribute("login", login);
	      }

		return "_service/SpecialService_YH";

	}

	@RequestMapping(value = "/_service/MemberLevel_YH.do", method = RequestMethod.GET)
	public String MemberLevel(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

	      if (loginInfo != null) {

	         String login = loginInfo.getUserName();

	         model.addAttribute("login", login);
	      }
		return "_service/MemberLevel_YH";

	}

	/** 발송 폼 구성 페이지 */
	@RequestMapping(value = "/_index/counsel_YH.do", method = RequestMethod.GET)
	public String write() {
		return "_index/counsel_YH";
	}

	/** action 페이지 */
	@RequestMapping(value = "/_index/send.do", method = RequestMethod.POST)
	public ModelAndView send(Model model) {
		/** 사용자의 입력값 받기 */
		String to = webHelper.getString("to");
		String subject = webHelper.getString("subject");
		String content = webHelper.getString("content");

		/** 입력여부 검사후, 입력되지 않은 경우 이전 페이지로 보내기 */
		// 받는 메일 주소 검사하기

		if (!regexHelper.isValue(to)) {
			return webHelper.redirect(null, "받는 사람의 이메일 주소를 입력하세요.");
		}

		if (!regexHelper.isEmail(to)) {
			return webHelper.redirect(null, "받는 사람의 이메일 주소가 잘못되었습니다.");
		}
		// 메일 제목 --> null체크도 입력 여부를 확인할 수 있다.
		if (subject == null) {
			return webHelper.redirect(null, "받는 사람의 이름을 입력하세요.");
		}

		// 메일 내용 --> null체크도 입력 여부를 확인할 수 있다.
		if (content == null) {
			return webHelper.redirect(null, "메일의 내용을 입력하세요.");
		}

		/** 메일 발송 처리 */
		try {
			// sendMail() 메서드 선언시 throws를 정의했기 때문에 예외처리가 요구된다.
			mailHelper.sendMail(to, subject, content);
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.redirect(null, "메일 발송에 실패했습니다.");
		}

		/** 결과처리 */
		return webHelper.redirect("counsel_YH.do", "메일 발송에 성공했습니다.");
	}
}