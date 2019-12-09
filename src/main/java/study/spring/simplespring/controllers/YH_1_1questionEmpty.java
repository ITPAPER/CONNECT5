package study.spring.simplespring.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
public class YH_1_1questionEmpty {

	@Autowired
	WebHelper webHelper;

	@Autowired
	BoardService boardService;

	@Autowired
	RegexHelper regexHelper;
	
	@Autowired
	UserService userService;
	
	@Autowired
	ReplyService replyService;
	
	@Value("#{servletContext.contextPath}")
	String contextPath;

	@RequestMapping(value = "/_mypage/1_1questionEmpty_YH.do", method = RequestMethod.GET)
	public ModelAndView view(Model model, HttpServletRequest request, HttpServletResponse response) {
		int nowPage    = webHelper.getInt("page", 1);           // 페이지 번호 (기본값 1)
	    int totalCount = 0;                                     // 전체 게시글 수
	    int listCount  = 10;                                    // 한 페이지당 표시할 목록 수
	    int pageCount  = 5;                                     // 한 그룹당 표시할 페이지 번호 수
	    
		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {

			String login = loginInfo.getUserName();

			model.addAttribute("login", login);
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

	@RequestMapping(value = "/_mypage/1_1questionadd.do", method = RequestMethod.GET)
	public ModelAndView add(Model model) {
		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {

			String login = loginInfo.getUserName();

			model.addAttribute("login", login);
		}

		return new ModelAndView("_mypage/1_1questionadd");

	}

	@RequestMapping(value = "/_mypage/1_1questionadd_Ok.do", method = RequestMethod.POST)
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
			boardService.addBoard1_1(input);

		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		// View에 추가

		String redirectUrl = contextPath + "/_mypage/1_1questionview.do?BoardId=" + input.getBoardId();
		return webHelper.redirect(redirectUrl, "1:1 문의글이 등록되었습니다.");

	}

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
}
