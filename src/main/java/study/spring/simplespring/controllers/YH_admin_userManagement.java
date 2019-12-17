package study.spring.simplespring.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import study.spring.simplespring.helper.PageData;
import study.spring.simplespring.helper.RegexHelper;
import study.spring.simplespring.helper.WebHelper;
import study.spring.simplespring.model.Board;
import study.spring.simplespring.model.User;
import study.spring.simplespring.service.BoardService;
import study.spring.simplespring.service.UserService;

@Controller
public class YH_admin_userManagement {

	@Autowired
	WebHelper webHelper;

	@Autowired
	BoardService boardService;

	@Autowired
	RegexHelper regexHelper;

	@Autowired
	UserService userService;

	@Value("#{servletContext.contextPath}")
	String contextPath;

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

	@RequestMapping(value = "/_admin/admin_userManagementadd.do", method = RequestMethod.GET)
	public ModelAndView add(Model model) {
		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {

			String login = loginInfo.getUserName();

			model.addAttribute("login", login);
		}
		return new ModelAndView("_admin/admin_userManagementadd");

	}

	@RequestMapping(value = "/_admin/admin_userManagementaddOk.do", method = RequestMethod.POST)
	public ModelAndView addOk(Model model) {
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
			boardService.addBoardNotice(input);

		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		// View에 추가

		String redirectUrl = contextPath + "/_admin/admin_userManagementview.do?BoardId=" + input.getBoardId();
		return webHelper.redirect(redirectUrl, "공지사항이 등록되었습니다.");

	}

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

		if (BoardId == 0) {
			return webHelper.redirect(null, "공지사항이 없습니다.");
		}

		Board input = new Board();
		input.setBoardId(BoardId);
		input.setTitle(Title);

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

	@RequestMapping(value = "/_admin/admin_userManagementedit.do", method = RequestMethod.GET)
	public ModelAndView edit(Model model) {

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

	@RequestMapping(value = "/_admin/admin_userManagementeditOk.do", method = RequestMethod.POST)
	public ModelAndView edit_ok(Model model) {

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

}