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
import study.spring.simplespring.model.Reply;
import study.spring.simplespring.model.User;
import study.spring.simplespring.service.BoardService;
import study.spring.simplespring.service.ReplyService;
import study.spring.simplespring.service.UserService;

@Controller
public class SE_AdminController {
	
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
	
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
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

		int BoardId = webHelper.getInt("BoardId");
		
		
		if (BoardId == 0) {
			return webHelper.redirect(null, "공지사항이 없습니다.");
		}
		
		Reply input1 = new Reply();
		input1.setBoardId(BoardId);
		
		Board input = new Board();
		input.setBoardId(BoardId);
		
		Reply output1 = null;
		Board output = null;
		
		try {
			// 데이터 조회
			output1 = replyService.getReplyadmin1_1(input1);
			output = boardService.getBoardItemadmin1_1(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		
		model.addAttribute("output1", output1);
		model.addAttribute("output", output);
		return new ModelAndView ("_admin/admin_QuestionRead_SE");
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
		int ReplyId = webHelper.getInt("ReplyId");
		
		
		Reply input = new Reply();
		input.setMemberId(MemberId);
		input.setRe_Content(Re_Content);
		input.setRe_Title(Re_Title);
		input.setBoardId(BoardId);
		input.setReplyId(ReplyId);
		
		try {
			// 데이터 저장
			// --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
			replyService.addReplyadmin1_1(input);

		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		// View에 추가

		String redirectUrl = contextPath + "/_admin/admin_QuestionAnswer2_SEview.do?ReplyId=" + input.getReplyId();
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
	
}
