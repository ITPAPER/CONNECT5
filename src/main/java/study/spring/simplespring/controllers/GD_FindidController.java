package study.spring.simplespring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GD_FindidController {
	
	@RequestMapping(value = "/_findAccount/FindId_GD.do", method = RequestMethod.GET)
	public String findid(Model model) {
		
		

		return "_findAccount/FindId_GD";

	}
	
	@RequestMapping(value = "/_findAccount/FindPw_GD.do", method = RequestMethod.GET)
	public String findpw(Model model) {
		
		
		

		return "_findAccount/FindPw_GD";

	}
	
	@RequestMapping(value = "/_findAccount/CheckId_GD.do", method = RequestMethod.GET)
	public String checkid(Model model) {
		
		
		

		return "_findAccount/CheckId_GD";

	}
	
	@RequestMapping(value = "/_findAccount/CheckPw_GD.do", method = RequestMethod.GET)
	public String checkpw(Model model) {
		
		
		

		return "_findAccount/CheckPw_GD";

	}

}
