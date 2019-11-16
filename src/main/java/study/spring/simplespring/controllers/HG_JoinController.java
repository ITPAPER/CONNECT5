package study.spring.simplespring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HG_JoinController {
	@RequestMapping(value = "/_join/join1_HG.do", method = RequestMethod.GET)
	public String join1(Model model) {
		
		

		return "_join/join1_HG";

	}
	@RequestMapping(value = "/_join/join2_HG.do", method = RequestMethod.GET)
	public String join2(Model model) {
		
		

		return "_join/join2_HG";

	}
	@RequestMapping(value = "/_join/join3_HG.do", method = RequestMethod.GET)
	public String join3(Model model) {
		
		

		return "_join/join3_HG";

	}
}
