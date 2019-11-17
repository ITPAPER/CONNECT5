package study.spring.simplespring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class YH_1_1questionEmpty {

	@RequestMapping(value = "/_mypage/1_1questionEmpty_YH.do", method = RequestMethod.GET)
	public String view(Model model) {

		return "_mypage/1_1questionEmpty_YH";

	}

	@RequestMapping(value = "/_mypage/1_1questionWrite_YH.do", method = RequestMethod.GET)
	public String wirte(Model model) {

		return "_mypage/1_1questionWrite_YH";

	}

	@RequestMapping(value = "/_mypage/1_1question_replyWaiting_YH.do", method = RequestMethod.GET)
	public String reply_wait(Model model) {

		return "_mypage/1_1question_replyWaiting_YH";

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
