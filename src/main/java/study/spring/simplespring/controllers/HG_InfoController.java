package study.spring.simplespring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HG_InfoController {

	@RequestMapping(value = "/_info/partner_HG.do", method = RequestMethod.GET)
	public String partner(Model model) {
		
		

		return "_info/partner_HG";

	}
	
	@RequestMapping(value = "/_info/manager_HG.do", method = RequestMethod.GET)
	public String manager(Model model) {
		
		

		return "_info/manager_HG";

	}
}
