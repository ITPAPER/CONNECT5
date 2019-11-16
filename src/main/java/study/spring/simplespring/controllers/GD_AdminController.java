package study.spring.simplespring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GD_AdminController {
	
	@RequestMapping(value = "/_admin/admin_Payment_GD.do", method = RequestMethod.GET)
	public String adminpayment(Model model) {
		
		

		return "_admin/admin_Payment_GD";

	}
	@RequestMapping(value = "/_admin/admin_QnA_GD.do", method = RequestMethod.GET)
	public String adminqna(Model model) {
		
		

		return "_admin/admin_QnA_GD";

	}
	@RequestMapping(value = "/_admin/admin_QnARead_GD.do", method = RequestMethod.GET)
	public String adminqnaread(Model model) {
		
		

		return "_admin/admin_QnARead_GD";

	}
	@RequestMapping(value = "/_admin/admin_QnAWrite_GD.do", method = RequestMethod.GET)
	public String adminqnawrite(Model model) {
		
		

		return "_admin/admin_QnAWrite_GD";

	}
	@RequestMapping(value = "/_admin/admin_userEx_GD.do", method = RequestMethod.GET)
	public String adminuserex(Model model) {
		
		

		return "_admin/admin_userEx_GD";

	}
	@RequestMapping(value = "/_admin/admin_userExRead_GD.do", method = RequestMethod.GET)
	public String adminuserexread(Model model) {
		
		

		return "_admin/admin_userEx_GD";

	}
	@RequestMapping(value = "/_admin/admin_userExWrite_GD.do", method = RequestMethod.GET)
	public String adminuserexwrite(Model model) {
		
		

		return "_admin/admin_userExWrite_GD";

	}
	
	
	

}
