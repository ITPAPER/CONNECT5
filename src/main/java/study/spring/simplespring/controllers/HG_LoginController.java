package study.spring.simplespring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HG_LoginController {

	
	@RequestMapping(value = "/_login/login_HG.do", method = RequestMethod.GET)
	public String login(Model model) {
		
		

		return "_login/login_HG";

	}
	@RequestMapping(value = "/_login/loginaction_HG.do", method = RequestMethod.POST)
	public String loginaction(Model model) {
		
		

		return "_login/loginaction_HG";

	}
}