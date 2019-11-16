package study.spring.simplespring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HG_WithdrawalController {

	@RequestMapping(value = "/_mypage/withdrawal1_HG.do", method = RequestMethod.GET)
	public String withdrawal1(Model model) {
		
		

		return "_mypage/withdrawal1_HG";

	}
	
	@RequestMapping(value = "/_mypage/withdrawal2_HG.do", method = RequestMethod.GET)
	public String withdrawal2(Model model) {
		
		

		return "_mypage/withdrawal2_HG";

	}
}
