package study.spring.simplespring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HG_PropensityController {
	@RequestMapping(value = "/_test/propensity1_HG.do", method = RequestMethod.GET)
	public String propensity1(Model model) {
		
		

		return "_test/propensity1_HG";

	}
	
	@RequestMapping(value = "/_test/propensity2_HG.do", method = RequestMethod.GET)
	public String propensity2(Model model) {
		
		

		return "_test/propensity2_HG";

	}
	
	@RequestMapping(value = "/_test/propensity3_HG.do", method = RequestMethod.GET)
	public String propensity3(Model model) {
		
		

		return "_test/propensity3_HG";

	}
}
