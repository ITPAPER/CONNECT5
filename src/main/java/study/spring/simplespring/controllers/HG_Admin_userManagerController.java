package study.spring.simplespring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HG_Admin_userManagerController {

	@RequestMapping(value = "/_admin/admin_userManager1_HG.do", method = RequestMethod.GET)
	public String admin_userManager1(Model model) {
		
		

		return "_admin/admin_userManager1_HG";

	}
	
	@RequestMapping(value = "/_admin/admin_userManager2_HG.do", method = RequestMethod.GET)
	public String admin_userManager2(Model model) {
		
		

		return "_admin/admin_userManager2_HG";

	}
}
