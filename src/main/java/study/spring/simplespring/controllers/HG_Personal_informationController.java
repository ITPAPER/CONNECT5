package study.spring.simplespring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HG_Personal_informationController {
	
	@RequestMapping(value = "/_mypage/personal_information1_HG.do", method = RequestMethod.GET)
	public String personal_information1(Model model) {
		
		

		return "_mypage/personal_information1_HG";

	}
	
	@RequestMapping(value = "/_mypage/personal_information2_HG.do", method = RequestMethod.GET)
	public String personal_information2(Model model) {
		
		

		return "_mypage/personal_information2_HG";

	}

}
