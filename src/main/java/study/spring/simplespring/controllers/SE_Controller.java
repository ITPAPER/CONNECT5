package study.spring.simplespring.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import study.spring.simplespring.helper.PageData;
import study.spring.simplespring.helper.RegexHelper;
import study.spring.simplespring.helper.WebHelper;
import study.spring.simplespring.model.Board;
import study.spring.simplespring.model.Reply;
import study.spring.simplespring.model.ReqMatch;
import study.spring.simplespring.model.SucMatch;
import study.spring.simplespring.model.User;
import study.spring.simplespring.service.BoardService;
import study.spring.simplespring.service.ReplyService;
import study.spring.simplespring.service.ReqMatchService;
import study.spring.simplespring.service.SucMatchService;
import study.spring.simplespring.service.UserService;

@Controller
public class SE_Controller {
	
	@Autowired
	WebHelper webHelper;

	@Autowired
	BoardService boardService;

	@Autowired
	ReplyService replyService;
	
	@Autowired
	RegexHelper regexHelper;

	@Autowired
	UserService userService;
	
	@Autowired
	ReqMatchService reqMatchService;
	
	@Autowired
	SucMatchService sucMatchService;
	
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	// --------------------------------------------------------------------------------------------------
	// Admin_Controller
	
	@RequestMapping(value = "/_admin/admin_main_SE.do", method = RequestMethod.GET)
	public String main(Model model) {

		return "_admin/admin_main_SE";
	}
	
	@RequestMapping(value = "/_admin/admin_Question_SE.do", method = RequestMethod.GET)
	public ModelAndView question1_1admin(Model model) {
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		String keyword = webHelper.getString("keyword", ""); // 검색어
		int nowPage = webHelper.getInt("page", 1); // 페이지 번호 (기본값 1)
		int totalCount = 0; // 전체 게시글 수
		int listCount = 10; // 한 페이지당 표시할 목록 수
		int pageCount = 5; // 한 그룹당 표시할 페이지 번호 수
		
		int MemberId = loginInfo.getMemberId();
		int BoardId = webHelper.getInt("BoardId");
		
		/** 2) 데이터 조회하기 */
		// 조회에 필요한 조건값(검색어)를 Beans에 담는다.
		Board input = new Board();
		input.setTitle(keyword);
		input.setUserName(keyword);
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
			output = boardService.getBoardListadmin1_1(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		/** 3) View 처리 */
		model.addAttribute("keyword", keyword);
		model.addAttribute("output", output);
		model.addAttribute("pageData", pageData);

		return new ModelAndView("_admin/admin_Question_SE");
	}
	
	@RequestMapping(value = "/_admin/admin_QuestionRead_SE.do", method = RequestMethod.GET)
	public ModelAndView viewadmin1_1(Model model) {
		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {

			String login = loginInfo.getUserName();

			model.addAttribute("login", login);
		}
		if (loginInfo == null) {
			String redirectUrl = contextPath + "/_login/login_HG.do";
			return webHelper.redirect(redirectUrl, "로그인 후 이용해주세요.");
		}
		
		int BoardId = webHelper.getInt("BoardId");
		String Re_Content = webHelper.getString("Re_Content");
		
		if (BoardId == 0) {
			return webHelper.redirect(null, "공지사항이 없습니다.");
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
			output = boardService.getBoardItemadmin1_1(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		
		model.addAttribute("output1", output1);
		model.addAttribute("output", output);
		return new ModelAndView("_admin/admin_QuestionRead_SE");
	}
	@RequestMapping(value = "/_admin/admin_QuestionRead_SEadd.do", method = RequestMethod.GET)
	public ModelAndView replyaddadmin1_1(Model model) {
		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {

			String login = loginInfo.getUserName();

			model.addAttribute("login", login);
		}
		return new ModelAndView("_admin/admin_QuestionRead_SEadd");
	}
	
	@RequestMapping(value = "/_admin/admin_QuestionRead_SEaddOk.do", method = RequestMethod.POST)
	public ModelAndView replyaddOkadmin1_1(Model model) {
		
		User loginInfo = (User) webHelper.getSession("loginInfo");

		String Re_Title = webHelper.getString("Re_Title");
		String Re_Content = webHelper.getString("Re_Content");
		int MemberId = loginInfo.getMemberId();
		int BoardId = webHelper.getInt("BoardId");
		
		
		Reply input = new Reply();
		input.setMemberId(MemberId);
		input.setRe_Content(Re_Content);
		input.setRe_Title(Re_Title);
		input.setBoardId(BoardId);
		
		try {
			// 데이터 저장
			// --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
			replyService.addReplyadmin1_1(input);

		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		// View에 추가

		String redirectUrl = contextPath + "/_admin/admin_QuestionRead_SE.do?BoardId=" + input.getBoardId();
		return webHelper.redirect(redirectUrl, "댓글이 등록되었습니다.");
	}
	
	@RequestMapping(value = "/_admin/admin_QuestionAnswer2_SEview.do", method = RequestMethod.GET)
	public ModelAndView replyOkview1_1admin(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {

			String login = loginInfo.getUserName();

			model.addAttribute("login", login);
		}
		
		String Title = webHelper.getString("Title");
		String BoardUserName = webHelper.getString("UserName");
		String CreationDate = webHelper.getString("CreationDate");
		int MemberId = webHelper.getInt("MemberId");
		
		Board input1 = new Board();
		input1.setTitle(Title);
		input1.setUserName(BoardUserName);
		input1.setCreationDate(CreationDate);
		input1.setMemberId(MemberId);
		
		
		int BoardId = webHelper.getInt("BoardId");
		String Re_Title = webHelper.getString("Re_Title");
		String Re_Content = webHelper.getString("Re_Content");
		String UserName = loginInfo.getUserName();
		
		if (BoardId == 0) {
			return webHelper.redirect(null, "공지사항이 없습니다.");
		}
		
		Reply input = new Reply();
		input.setBoardId(BoardId);
		input.setRe_Content(Re_Content);
		input.setUserName(UserName);
		input.setRe_Title(Re_Title);
		
		Reply output = null;
		Board output1 = null;
		
		
		
		try {
			// 데이터 조회
			output1 = boardService.getBoardItemadmin1_1(input1);
			output = replyService.getReplyadmin1_1(input);
			
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("output1", output1);
		model.addAttribute("output", output);
		return new ModelAndView("_admin/admin_QuestionAnswer2_SEview");
	}
	
	
	
	
	
	@RequestMapping(value = "/_admin/admin_QuestionAnswer1_SE.do", method = RequestMethod.GET)
	public String questionAnswer1(Model model) {

		return "_admin/admin_QuestionAnswer1_SE";
	}
	
	@RequestMapping(value = "/_admin/admin_QuestionAnswer2_SE.do", method = RequestMethod.GET)
	public String questionAnswer2(Model model) {

		return "_admin/admin_QuestionAnswer2_SE";
	}
	
	// --------------------------------------------------------------------------------------------------
	// Notice_Controller
	
	@RequestMapping(value = "/_info/notice_SE.do", method = RequestMethod.GET)
	public ModelAndView list(Model model) {
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}

		/** 1) 필요한 변수값 생성 */
        String keyword = webHelper.getString("keyword", "");    // 검색어
        int nowPage    = webHelper.getInt("page", 1);           // 페이지 번호 (기본값 1)
        int totalCount = 0;                                     // 전체 게시글 수
        int listCount  = 10;                                    // 한 페이지당 표시할 목록 수
        int pageCount  = 5;                                     // 한 그룹당 표시할 페이지 번호 수
        
        /** 2) 데이터 조회하기 */
        // 조회에 필요한 조건값(검색어)를 Beans에 담는다.
        Board input = new Board();
        input.setBoardId(0);
        input.setTitle(keyword);
        input.setUserId(keyword);
    	input.setCreationDate(keyword);
    	
        List<Board> output = null; // 조회결과가 저장될 객체
        PageData pageData = null;       // 페이지 번호를 계산한 결과가 저장될 객체

        try {
            // 전체 게시글 수 조회
            totalCount = boardService.getBoardCountNotice(input);
            // 페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
            pageData = new PageData(nowPage, totalCount, listCount, pageCount);

            // SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
            Board.setOffset(pageData.getOffset());
            Board.setListCount(pageData.getListCount());

            // 데이터 조회하기
            output = boardService.getBoardListNotice(input);
        } catch (Exception e) {
            return webHelper.redirect(null, e.getLocalizedMessage());
        }

        /** 3) View 처리 */
        model.addAttribute("keyword", keyword);
        model.addAttribute("output", output);
        model.addAttribute("pageData", pageData);

        return new ModelAndView("_info/notice_SE");
	}
	
	@RequestMapping(value = "/_info/noticeRead_SE.do", method = RequestMethod.GET)
	public ModelAndView noticeread2(Model model) {
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}

		 /** 1) 필요한 변수값 생성 */
	       // 조회할 대상에 대한 PK값
	       int boardId = webHelper.getInt("boardId");

	       // 이 값이 존재하지 않는다면 데이터 조회가 불가능하므로 반드시 필수값으로 처리해야 한다.
	       if (boardId == 0) {
	           return webHelper.redirect(null, "글번호가 없습니다.");
	       }

	       /** 2) 데이터 조회하기 */
	       // 데이터 조회에 필요한 조건값을 Beans에 저장하기
	       Board input = new Board();
	       input.setBoardId(boardId);

	       // 조회결과를 저장할 객체 선언
	       Board output = null;

	       try {
	           // 데이터 조회
	           output = boardService.getBoardItem(input);
	       } catch (Exception e) {
	           return webHelper.redirect(null, e.getLocalizedMessage());
	       }
	       
	       /** 3) View 처리 */
	       model.addAttribute("output", output);
	       return new ModelAndView("_info/noticeRead_SE");

		}
	
	// --------------------------------------------------------------------------------------------------
	// QnA_Controller
	
	@RequestMapping(value = "/_coach/QnA_SE.do", method = RequestMethod.GET)
	public ModelAndView list2(Model model) {
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}
		
		/** 1) 필요한 변수값 생성 */
        String keyword = webHelper.getString("keyword", "");    // 검색어
        int nowPage    = webHelper.getInt("page", 1);           // 페이지 번호 (기본값 1)
        int totalCount = 0;                                     // 전체 게시글 수
        int listCount  = 10;                                    // 한 페이지당 표시할 목록 수
        int pageCount  = 5;                                     // 한 그룹당 표시할 페이지 번호 수
        
        /** 2) 데이터 조회하기 */
        // 조회에 필요한 조건값(검색어)를 Beans에 담는다.
        Board input = new Board();
        input.setBoardId(0);
        input.setTitle(keyword);
        input.setUserId(keyword);
    	input.setCreationDate(keyword);
    	
        List<Board> output = null; // 조회결과가 저장될 객체
        PageData pageData = null;       // 페이지 번호를 계산한 결과가 저장될 객체

        try {
            // 전체 게시글 수 조회
            totalCount = boardService.getBoardCountQnA(input);
            // 페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
            pageData = new PageData(nowPage, totalCount, listCount, pageCount);

            // SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
            Board.setOffset(pageData.getOffset());
            Board.setListCount(pageData.getListCount());

            // 데이터 조회하기
            output = boardService.getBoardListQnA(input);
        } catch (Exception e) {
            return webHelper.redirect(null, e.getLocalizedMessage());
        }

        /** 3) View 처리 */
        model.addAttribute("keyword", keyword);
        model.addAttribute("output", output);
        model.addAttribute("pageData", pageData);

        return new ModelAndView("_coach/QnA_SE");
	} 
	
	@RequestMapping(value = "/_coach/QnAWrite_SE.do", method = RequestMethod.GET)
	public ModelAndView QnAadd(Model model) {
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}
		
        return new ModelAndView("_coach/QnAWrite_SE");

	}
	
	@RequestMapping(value = "/_coach/QnAWrite_ok_SE.do", method = RequestMethod.POST)
    public ModelAndView QnAadd_ok(Model model) {
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		int MemberId = loginInfo.getMemberId();
		String UserId = loginInfo.getUserId();
		
        /** 1) 사용자가 입력한 파라미터 수신 및 유효성 검사 */
        String Title = webHelper.getString("Title");
        String Content = webHelper.getString("Content");
        String CreationDate = webHelper.getString("CreationDate");
        String ContentImg = webHelper.getString("ContentImg");
        int Category = webHelper.getInt("Category");
       
        /** 2) 데이터 저장하기 */
        // 저장할 값들을 Beans에 담는다.
        Board input = new Board();
        input.setMemberId(MemberId);
        input.setTitle(Title);
        input.setContent(Content);
        input.setCreationDate(CreationDate);
        input.setContentImg(ContentImg);
        input.setCategory(Category);
        input.setUserId(UserId);
        
        try {
            // 데이터 저장
            // --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
            boardService.addBoardQnA(input);
        } catch (Exception e) {
            return webHelper.redirect(null, e.getLocalizedMessage());
        }

        /** 3) 결과를 확인하기 위한 페이지 이동 */
        // 저장 결과를 확인하기 위해서 데이터 저장시 생성된 PK값을 상세 페이지로 전달해야 한다.
        String redirectUrl = contextPath + "/_coach/QnARead_SE.do?BoardId=" + input.getBoardId();
        return webHelper.redirect(redirectUrl, "저장되었습니다.");
    }
	
	@RequestMapping(value = "/_coach/QnARead_SE.do", method = RequestMethod.GET)
	public ModelAndView QnAview(Model model) {
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}
		
		 /** 1) 필요한 변수값 생성 */
       // 조회할 대상에 대한 PK값
       int BoardId = webHelper.getInt("BoardId");
       
       // 이 값이 존재하지 않는다면 데이터 조회가 불가능하므로 반드시 필수값으로 처리해야 한다.
       if (BoardId == 0) {
           return webHelper.redirect(null, "글번호가 없습니다.");
       }
      
       /** 2) 데이터 조회하기 */
       // 데이터 조회에 필요한 조건값을 Beans에 저장하기
       Board input = new Board();
       input.setBoardId(BoardId);
       
       Reply input1 = new Reply();
       input1.setBoardId(BoardId);
    
       // 조회결과를 저장할 객체 선언
       Board output = null;
       List<Reply> output1 = null;
       
       try {
           // 데이터 조회
           output = boardService.getBoardItem(input);
           output1 = replyService.getReplyList(input1);
       } catch (Exception e) {
           return webHelper.redirect(null, e.getLocalizedMessage());
       }
       
       /** 3) View 처리 */
       model.addAttribute("output", output);
       model.addAttribute("output1", output1);
       
       return new ModelAndView("_coach/QnARead_SE");

	}
	
	@RequestMapping(value = "/_coach/replyDelete_SE.do", method = RequestMethod.GET)
	public ModelAndView QnAReplydelete(Model model) {
		
		int ReplyId = webHelper.getInt("ReplyId");
	
		
		if (ReplyId == 0) {
			webHelper.redirect(null, "댓글번호가 없습니다.");
		}
				
		Reply input = new Reply();
		input.setReplyId(ReplyId);
		
		try {
			replyService.deleteReply(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		return webHelper.redirect(contextPath + "/_coach/QnA_SE.do", "삭제되었습니다.");
	}
	
	@RequestMapping(value = "/_coach/replyWrite_ok_SE.do", method = RequestMethod.POST)
    public ModelAndView QnAreplyadd_ok(Model model) {
		User loginInfo = (User) webHelper.getSession("loginInfo");
		int MemberId = loginInfo.getMemberId();
		String UserName = loginInfo.getUserName();
		int BoardId = webHelper.getInt("BoardId");
		String Re_Title = webHelper.getString("Re_Title");
		String Re_Content = webHelper.getString("Re_Content");
		
		
		Reply input = new Reply();
		input.setBoardId(BoardId);
		input.setMemberId(MemberId);
		input.setRe_Content(Re_Content);
		input.setRe_Title(Re_Title);
		input.setUserName(UserName);
        
        try {
            // 데이터 저장
            // --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
            replyService.addReply(input);
        } catch (Exception e) {
            return webHelper.redirect(null, e.getLocalizedMessage());
        }

        /** 3) 결과를 확인하기 위한 페이지 이동 */
        // 저장 결과를 확인하기 위해서 데이터 저장시 생성된 PK값을 상세 페이지로 전달해야 한다.
        String redirectUrl = contextPath + "/_coach/QnARead_SE.do?BoardId=" + input.getBoardId();
        return webHelper.redirect(redirectUrl, "저장되었습니다.");
    }
	

	@RequestMapping(value = "/_coach/replyeditOk.do", method = RequestMethod.POST)
	public ModelAndView QnAedit_ok(Model model) {
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		int ReplyId = webHelper.getInt("ReplyId");
		String Re_Title = webHelper.getString("Re_Title");
		String Re_Content = webHelper.getString("Re_Content");
		int BoardId = webHelper.getInt("BoardId");
		int MemberId = loginInfo.getMemberId();
		String UserName = loginInfo.getUserName();
		
		if (ReplyId == 0) {
			return webHelper.redirect(null, "댓글번호가 없습니다.");
		}
		
		Reply input = new Reply();
		input.setReplyId(ReplyId);
		input.setRe_Title(Re_Title);
		input.setRe_Content(Re_Content);
		input.setBoardId(BoardId);
		input.setMemberId(MemberId);
		input.setUserName(UserName);
		
		try {
			replyService.editReply(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		String redirectUrl = contextPath + "/_coach/QnARead_SE.do?BoardId=" + input.getBoardId();
        return webHelper.redirect(redirectUrl, "댓글이 수정 되었습니다.");

	}
	
	// --------------------------------------------------------------------------------------------------
	// Review_Controller
	
	@RequestMapping(value = "/_coach/review_SE.do", method = RequestMethod.GET)
	public ModelAndView Reviewview(Model model) {
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}
		
		/** 1) 필요한 변수값 생성 */
        String keyword = webHelper.getString("keyword", "");    // 검색어
        int nowPage    = webHelper.getInt("page", 1);           // 페이지 번호 (기본값 1)
        int totalCount = 0;                                     // 전체 게시글 수
        int listCount  = 10;                                    // 한 페이지당 표시할 목록 수
        int pageCount  = 5;                                     // 한 그룹당 표시할 페이지 번호 수
        
        /** 2) 데이터 조회하기 */
        // 조회에 필요한 조건값(검색어)를 Beans에 담는다.
        Board input = new Board();
        input.setBoardId(0);
        input.setTitle(keyword);
        input.setUserId(keyword);
    	input.setCreationDate(keyword);
    	
        List<Board> output = null; // 조회결과가 저장될 객체
        PageData pageData = null;       // 페이지 번호를 계산한 결과가 저장될 객체

        try {
            // 전체 게시글 수 조회
            totalCount = boardService.getBoardCountReview(input);
            // 페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
            pageData = new PageData(nowPage, totalCount, listCount, pageCount);

            // SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
            Board.setOffset(pageData.getOffset());
            Board.setListCount(pageData.getListCount());

            // 데이터 조회하기
            output = boardService.getBoardListReview(input);
        } catch (Exception e) {
            return webHelper.redirect(null, e.getLocalizedMessage());
        }

        /** 3) View 처리 */
        model.addAttribute("keyword", keyword);
        model.addAttribute("output", output);
        model.addAttribute("pageData", pageData);

        return new ModelAndView("_coach/review_SE");
	}
	
	@RequestMapping(value = "/_coach/reviewWrite_SE.do", method = RequestMethod.GET)
	public ModelAndView add(Model model) {
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}

        return new ModelAndView("_coach/reviewWrite_SE");

	}
	
	@RequestMapping(value = "/_coach/reviewWrite_ok_SE.do", method = RequestMethod.POST)
    public ModelAndView add_ok(Model model) {
		User loginInfo = (User) webHelper.getSession("loginInfo");
		int MemberId = loginInfo.getMemberId();
		String UserId = loginInfo.getUserId();
		
        /** 1) 사용자가 입력한 파라미터 수신 및 유효성 검사 */
        String Title = webHelper.getString("Title");
        String Content = webHelper.getString("Content");
        String CreationDate = webHelper.getString("CreationDate");
        String ContentImg = webHelper.getString("ContentImg");
        int Category = webHelper.getInt("Category");
       
        /** 2) 데이터 저장하기 */
        // 저장할 값들을 Beans에 담는다.
        Board input = new Board();
        input.setMemberId(MemberId);
        input.setTitle(Title);
        input.setContent(Content);
        input.setCreationDate(CreationDate);
        input.setContentImg(ContentImg);
        input.setCategory(Category);
        input.setUserId(UserId);

        try {
            // 데이터 저장
            // --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
            boardService.addBoardReview(input);
        } catch (Exception e) {
            return webHelper.redirect(null, e.getLocalizedMessage());
        }

        /** 3) 결과를 확인하기 위한 페이지 이동 */
        // 저장 결과를 확인하기 위해서 데이터 저장시 생성된 PK값을 상세 페이지로 전달해야 한다.
        String redirectUrl = contextPath + "/_coach/reviewRead_SE.do?BoardId=" + input.getBoardId();
        return webHelper.redirect(redirectUrl, "저장되었습니다.");
		
	}
	
	@RequestMapping(value = "/_coach/reviewRead_SE.do", method = RequestMethod.GET)
	public ModelAndView Reviewread2(Model model) {
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}
		
		 /** 1) 필요한 변수값 생성 */
	       // 조회할 대상에 대한 PK값
	       int BoardId = webHelper.getInt("BoardId");

	       // 이 값이 존재하지 않는다면 데이터 조회가 불가능하므로 반드시 필수값으로 처리해야 한다.
	       if (BoardId == 0) {
	           return webHelper.redirect(null, "글번호가 없습니다.");
	       }

	       /** 2) 데이터 조회하기 */
	       // 데이터 조회에 필요한 조건값을 Beans에 저장하기
	       Board input = new Board();
	       input.setBoardId(BoardId);
	       
	       Reply input1 = new Reply();
	       input1.setBoardId(BoardId);

	       // 조회결과를 저장할 객체 선언
	       Board output = null;
	       List<Reply> output1 = null;

	       try {
	           // 데이터 조회
	           output = boardService.getBoardItem(input);
	           output1 = replyService.getReplyList(input1);
	       } catch (Exception e) {
	           return webHelper.redirect(null, e.getLocalizedMessage());
	       }
	       
	       /** 3) View 처리 */
	       model.addAttribute("output", output);
	       model.addAttribute("output1", output1);
	       return new ModelAndView("_coach/reviewRead_SE");
	}
	
	@RequestMapping(value = "/_coach/repReviewDelete_SE.do", method = RequestMethod.GET)
	public ModelAndView delete(Model model) {
		
		int ReplyId = webHelper.getInt("ReplyId");
	
		
		if (ReplyId == 0) {
			webHelper.redirect(null, "댓글번호가 없습니다.");
		}
				
		Reply input = new Reply();
		input.setReplyId(ReplyId);
		
		try {
			replyService.deleteReply(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		return webHelper.redirect(contextPath + "/_coach/review_SE.do", "삭제되었습니다.");
	}
	
	@RequestMapping(value = "/_coach/repReviewWrite_ok.do", method = RequestMethod.POST)
    public ModelAndView replyadd_ok(Model model) {
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		int MemberId = loginInfo.getMemberId();
		String UserName = loginInfo.getUserName();
        /** 1) 사용자가 입력한 파라미터 수신 및 유효성 검사 */
		int BoardId = webHelper.getInt("BoardId");
        String Re_Content = webHelper.getString("Re_Content");      
       
        /** 2) 데이터 저장하기 */
        // 저장할 값들을 Beans에 담는다.
        Reply input = new Reply();
        input.setBoardId(BoardId);
        input.setMemberId(MemberId);
        input.setRe_Content(Re_Content);
        input.setUserName(UserName);
        
        
        try {
            // 데이터 저장
            // --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
            replyService.addReply(input);
        } catch (Exception e) {
            return webHelper.redirect(null, e.getLocalizedMessage());
        }

        /** 3) 결과를 확인하기 위한 페이지 이동 */
        // 저장 결과를 확인하기 위해서 데이터 저장시 생성된 PK값을 상세 페이지로 전달해야 한다.
        String redirectUrl = contextPath + "/_coach/reviewRead_SE.do?BoardId=" + input.getBoardId();
        return webHelper.redirect(redirectUrl, "저장되었습니다.");
    }
	

	@RequestMapping(value = "/_coach/repReviewEditOk.do", method = RequestMethod.POST)
	public ModelAndView edit_ok(Model model) {
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		int ReplyId = webHelper.getInt("ReplyId");
		String Re_Title = webHelper.getString("Re_Title");
		String Re_Content = webHelper.getString("Re_Content");
		int BoardId = webHelper.getInt("BoardId");
		int MemberId = loginInfo.getMemberId();
		String UserName = loginInfo.getUserName();
		
		if (ReplyId == 0) {
			return webHelper.redirect(null, "댓글번호가 없습니다.");
		}
		
		Reply input = new Reply();
		input.setReplyId(ReplyId);
		input.setRe_Title(Re_Title);
		input.setRe_Content(Re_Content);
		input.setBoardId(BoardId);
		input.setMemberId(MemberId);
		input.setUserName(UserName);
		
		try {
			replyService.editReply(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		String redirectUrl = contextPath + "/_coach/reviewRead_SE.do?BoardId=" + input.getBoardId();
        return webHelper.redirect(redirectUrl, "댓글이 수정 되었습니다.");

	}
	
	// --------------------------------------------------------------------------------------------------
	// Search_Controller
	
	@ResponseBody
	 @RequestMapping(value = "/_mypage/search_ok.do", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
	   public String searchOk() {
		 	String start = webHelper.getString("start");
		 	
			User input1 = new User();
			input1.setStart(start);
	
			// 조회결과를 저장할 객체 선언
			List<User> output1 = null;
	
			try {
				// 데이터 조회
				output1 = userService.getreqUserList(input1);
			} catch (Exception e) {
				System.out.println("에러발생");
			}
	
			Gson gson = new Gson();
		    return gson.toJson(output1);
	 }
	 
	@RequestMapping(value = "/_mypage/search_SE.do", method = RequestMethod.GET)
	public ModelAndView Searchview(Model model) {
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}
		if (loginInfo == null) {
			String redirectUrl = contextPath + "/_login/login_HG.do";
			return webHelper.redirect(redirectUrl, "로그인 후 이용해주세요.");
		}
		
		// 상대방 MemberId searchRequestConfirm_SE 에서 던져줬음
		int otherMemberId = webHelper.getInt("MemberId");
		// 상대방 MemberId 가 0 이 아닐때만 이 로직이 실행되야 함
		if (otherMemberId != 0) {
			// User에 otherUser 객체 만든 후  상대방 MemberId 넣어줌
			User otherUser = new User();
			otherUser.setMemberId(otherMemberId);
			
			// SucMatch DB 에 유저에서 객체 만들어서 넣어야 하니까 상대방 MemberId 와 내꺼 MemberId 넣어줌  
			SucMatch sucMatch = new SucMatch();
			sucMatch.setMemberId(loginInfo.getMemberId());
			sucMatch.setOtherMemberId(otherUser.getMemberId());
			
			// ReqMatchId 가 없기 때문에 ReqMatch 객체 하나 더 만들어서 
			// 내가 데이트 신청하는 날짜는 
			// 상대방의 등록한 날짜 이기 때문에 상대방 ReqMatchId 를 가져오고
			// 내가 그사람 한테 신청 한거기 때문에 ReqMatch는 otherMemberId 를 가져와서 add 한것
			ReqMatch reqMatch = new ReqMatch();
			reqMatch.setMemberId(otherMemberId);
			
			 try {
				 // ReqMatch 를 검색해서 상대방 ReqMatchId SucMatch 테이블에 ReqMatchId 에 넣어줌
		         reqMatch = reqMatchService.getReqMatchItem(reqMatch);
		         sucMatch.setReqMatchId(reqMatch.getReqMatchId()); 
		         
		         // 클릭한 사람의 MemberId가 넘어왔을시에 본인의 MemberId와 상대방의 MemberId를 SucMatch 테이블에 저장 
		         sucMatchService.addSucMatch(sucMatch);
		      } catch (Exception e) {
		          return webHelper.redirect(null, e.getLocalizedMessage());
		      }
			 // 신청이 완료 되면 MyPage에 MyInfo 페이지로 이동
			 String redirectUrl = contextPath + "/_mypage/myInfo_GD.do?MemberId=" + loginInfo.getMemberId();
	          return webHelper.redirect(redirectUrl,"신청이 완료 되었습니다.");
		}
		
		int isSpUser = loginInfo.getIsSpUser();
		int MemberId = loginInfo.getMemberId();
		
      /** 데이터 조회하기 */
      // 데이터 조회에 필요한 조건값을 Beans에 저장하기
      ReqMatch input = new ReqMatch();
      input.setMemberId(MemberId);
      
      
      // 조회결과를 저장할 객체 선언
      List<ReqMatch> output = null;
      
      try {
          // 데이터 조회
          output = reqMatchService.getReqMatchList(input);
      } catch (Exception e) {
          return webHelper.redirect(null, e.getLocalizedMessage());
      }
      
      Gson gson = new Gson();
      String jsonList = gson.toJson(output);
    
      ReqMatch output2 = null;

      if (isSpUser == 1) {
          try { 
             // 데이터 조회
             output2 = reqMatchService.getReqMatchItem(input);
             
          } catch (Exception e) {
             return webHelper.redirect(null, e.getLocalizedMessage());
          }
          
          String redirectUrl = contextPath + "/_mypage/searchview_SE.do?Start=" + output2.getStart();
          return webHelper.redirect(redirectUrl," 선택한 날짜가 있네요! 확인해보세요! ");
       }

      /** 3) View 처리 */
      model.addAttribute("output", output);
      model.addAttribute("jsonList", jsonList);
      
      return new ModelAndView("_mypage/search_SE");
	} 
	

	
	@RequestMapping(value = "/_mypage/searchDateOpen_SE.do", method = RequestMethod.GET)
	public ModelAndView dateOpen(Model model) {
		
      
      return new ModelAndView("_mypage/searchDateOpen_SE");
	} 
	
	@RequestMapping(value = "/_mypage/searchDateRequest_SE.do", method = RequestMethod.GET)
	public ModelAndView dateReq(Model model) {
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		 loginInfo.setIsSpUser(1);
	      webHelper.setSession("loginInfo", loginInfo);

		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}
		
		int MemberId = loginInfo.getMemberId();
		String start = webHelper.getString("start");
		String Select_Date = webHelper.getString("Select_Date");
		int isSpUser = loginInfo.getIsSpUser();
		int ReqSpService = webHelper.getInt("ReqSpService");
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" + ReqSpService);

		User input1 = new User();
		input1.setIsSpUser(isSpUser);
		input1.setMemberId(MemberId);
		input1.setReqSpService(ReqSpService);

		ReqMatch input = new ReqMatch();
		input.setMemberId(MemberId);
		input.setStart(start);
		input.setSelect_Date(Select_Date);
		input.setReqSpService(ReqSpService);
		
		if (ReqSpService == 1) {
			try {
				userService.editreqSpService_User(input1);
			} catch (Exception e) {
				return webHelper.redirect(null, e.getLocalizedMessage());
			}
		}
	
		try {
			reqMatchService.addReqMatch(input);
			userService.editreqMatch_User(input1);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		String redirectUrl = contextPath + "/_mypage/searchview_SE.do?start=" + input.getStart();
	      return webHelper.redirect(redirectUrl, input.getStart()+ " 선택 하셨습니다. ");
	   }
	
	@RequestMapping(value = "/_mypage/searchview_SE.do", method = RequestMethod.GET)
	   public ModelAndView reqConfirm(Model model) {
	      User loginInfo = (User) webHelper.getSession("loginInfo");

	      if (loginInfo != null) {

	         String login = loginInfo.getUserName();
	         
	         model.addAttribute("login", login);
	      }
	      
	      int MemberId = loginInfo.getMemberId();
	      
	      ReqMatch input = new ReqMatch();
	      input.setMemberId(MemberId);
	      
	      List<ReqMatch> output = null;
	       
	       try {
	           // 데이터 조회
	           output = reqMatchService.getReqMatchList(input);
	       } catch (Exception e) {
	           return webHelper.redirect(null, e.getLocalizedMessage());
	       }
	       
	       Gson gson = new Gson();
	       String jsonList = gson.toJson(output);
	       
	       /** 3) View 처리 */
	       model.addAttribute("output", output);
	       model.addAttribute("jsonList", jsonList);
	      return new ModelAndView("_mypage/searchview_SE");
	   }
	
	@RequestMapping(value = "/_mypage/searchRequestConfirm_SE.do", method = RequestMethod.GET)
   public ModelAndView confirm(Model model) {
		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {

			String login = loginInfo.getUserName();

			model.addAttribute("login", login);
		}
		
		int MemberId = webHelper.getInt("MemberId");
		int Gender = webHelper.getInt("Gender");
		String Style = webHelper.getString("Style");
		String Personality = webHelper.getString("Personality");
		String BirthDate = webHelper.getString("BirthDate");
		String Sal_Annual = webHelper.getString("Sal_Annual");
		String UserName = webHelper.getString("UserName");
		String User_Img = webHelper.getString("User_Img");
		
		User input = new User();
		input.setMemberId(MemberId);
		input.setStyle(Style);
		input.setSal_Annual(Sal_Annual);
		input.setPersonality(Personality);
		input.setGender(Gender);
		input.setBirthDate(BirthDate);
		input.setUserName(UserName);
		input.setUser_Img(User_Img);
		
		User output = null;

		try {
			output = userService.getUserItem(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("output",output);
		return new ModelAndView("_mypage/searchRequestConfirm_SE");
	}
	// --------------------------------------------------------------------------------------------------
	// Story_Controller
	
	@RequestMapping(value = "/_info/story_SE.do", method = RequestMethod.GET)
	public ModelAndView view(Model model) {
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}
		
		/** 1) 필요한 변수값 생성 */
        String keyword = webHelper.getString("keyword", "");    // 검색어
        int nowPage    = webHelper.getInt("page", 1);           // 페이지 번호 (기본값 1)
        int totalCount = 0;                                     // 전체 게시글 수
        int listCount  = 10;                                    // 한 페이지당 표시할 목록 수
        int pageCount  = 5;                                     // 한 그룹당 표시할 페이지 번호 수
        
        /** 2) 데이터 조회하기 */
        // 조회에 필요한 조건값(검색어)를 Beans에 담는다.
        Board input = new Board();
        input.setBoardId(0);
        input.setTitle(keyword);
        input.setUserId(keyword);
    	input.setCreationDate(keyword);
    	
        List<Board> output = null; // 조회결과가 저장될 객체
        PageData pageData = null;       // 페이지 번호를 계산한 결과가 저장될 객체

        try {
            // 전체 게시글 수 조회
            totalCount = boardService.getBoardCountStory(input);
            // 페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
            pageData = new PageData(nowPage, totalCount, listCount, pageCount);

            // SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
            Board.setOffset(pageData.getOffset());
            Board.setListCount(pageData.getListCount());

            // 데이터 조회하기
            output = boardService.getBoardListStory(input);
        } catch (Exception e) {
            return webHelper.redirect(null, e.getLocalizedMessage());
        }

        /** 3) View 처리 */
        model.addAttribute("keyword", keyword);
        model.addAttribute("output", output);
        model.addAttribute("pageData", pageData);

        return new ModelAndView("_info/story_SE");
	}
	
	@RequestMapping(value = "/_info/storyRead_SE.do", method = RequestMethod.GET)
	public ModelAndView read2(Model model) {
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}
		
		if (loginInfo == null) {
			String redirectUrl = contextPath + "/_login/login_HG.do";
			return webHelper.redirect(redirectUrl, "로그인 후 이용해주세요.");
		}
		
		 /** 1) 필요한 변수값 생성 */
	       // 조회할 대상에 대한 PK값
	       int boardId = webHelper.getInt("boardId");

	       // 이 값이 존재하지 않는다면 데이터 조회가 불가능하므로 반드시 필수값으로 처리해야 한다.
	       if (boardId == 0) {
	           return webHelper.redirect(null, "글번호가 없습니다.");
	       }

	       /** 2) 데이터 조회하기 */
	       // 데이터 조회에 필요한 조건값을 Beans에 저장하기
	       Board input = new Board();
	       input.setBoardId(boardId);

	       // 조회결과를 저장할 객체 선언
	       Board output = null;

	       try {
	           // 데이터 조회
	           output = boardService.getBoardItem(input);
	       } catch (Exception e) {
	           return webHelper.redirect(null, e.getLocalizedMessage());
	       }
	       
	       /** 3) View 처리 */
	       model.addAttribute("output", output);
	       return new ModelAndView("_info/storyRead_SE");
	}
}