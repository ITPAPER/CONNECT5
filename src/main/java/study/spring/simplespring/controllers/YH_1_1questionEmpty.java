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

import study.spring.simplespring.helper.RegexHelper;
import study.spring.simplespring.helper.WebHelper;
import study.spring.simplespring.model.Board;
import study.spring.simplespring.model.User;
import study.spring.simplespring.service.BoardService;
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
	
	

	@Value("#{servletContext.contextPath}")
	String contextPath;

	@RequestMapping(value = "/_mypage/1_1questionEmpty_YH.do", method = RequestMethod.GET)
	public ModelAndView view(Model model, HttpServletRequest request, HttpServletResponse response) {
		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {

			String output = loginInfo.getUserName();

			model.addAttribute("output", output);
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
		
		List<Board> output2 = null;
		try {

			output2 = boardService.getBoardList(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		// View에 추가
		model.addAttribute("output2", output2);
		return new ModelAndView("_mypage/1_1questionEmpty_YH");

	}

	@RequestMapping(value = "/_mypage/1_1questionadd.do", method = RequestMethod.GET)
	public ModelAndView add(Model model) {
		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {

			String output = loginInfo.getUserName();

			model.addAttribute("output", output);
		}
		
		int MemberId = loginInfo.getMemberId();
		String Title = webHelper.getString("Title");
		String Content = webHelper.getString("Content");
		String CreationDate = webHelper.getString("CreationDate");
		int Category = webHelper.getInt("Category");
		String ContentImg = webHelper.getString("ContentImg");
		
		Board input = new Board();
		input.setContent(Content);
		input.setTitle(Title);
		input.setCategory(Category);
		input.setMemberId(MemberId);
		input.setCreationDate(CreationDate);
		input.setContentImg(ContentImg);
		
		
		try {
			// 데이터 저장
			// --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
			boardService.addBoard(input);

		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		// View에 추가

		String redirectUrl = contextPath + "/home.do?BoardId=" + input.getBoardId();
        return webHelper.redirect(redirectUrl, "저장되었습니다.");


	}

	@RequestMapping(value = "/_mypage/1_1questionadd_Ok.do", method = RequestMethod.GET)
	public ModelAndView addOk(Model model) {
	return null;

	}

	@RequestMapping(value = "/_mypage/1_1question_replyWait_YH.do", method = RequestMethod.GET)
	public String wait(Model model) {

		return "_mypage/1_1question_replyWait_YH";

	}

	@RequestMapping(value = "/_mypage/1_1question_ok_YH.do", method = RequestMethod.GET)
	public String quest_ok(Model model) {

		return "_mypage/1_1question_ok_YH";

	}

	@RequestMapping(value = "/_mypage/1_1question_okConfirm_YH.do", method = RequestMethod.GET)
	public String quest_okConfirm(Model model) {

		return "_mypage/1_1question_okConfirm_YH";

	}
}
