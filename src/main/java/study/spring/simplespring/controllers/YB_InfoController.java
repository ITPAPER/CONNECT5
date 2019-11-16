package study.spring.simplespring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class YB_InfoController {

	@RequestMapping(value = "/_info/IntroWebsite_YB.do", method = RequestMethod.GET)
	public String IntroWebsite(Model model) {

		return "_info/IntroWebsite_YB";
	}
	
	@RequestMapping(value = "/_info/Greetings_YB.do", method = RequestMethod.GET)
	public String Greetings(Model model) {

		return "_info/Greetings_YB";
	}
}
