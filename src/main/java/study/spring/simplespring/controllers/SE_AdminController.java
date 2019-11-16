package study.spring.simplespring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SE_AdminController {
	@RequestMapping(value = "/_admin/main_SE.do", method = RequestMethod.GET)
	public String main(Model model) {

		return "_admin/main_SE";
	}
	
	@RequestMapping(value = "/_admin/admin_Question_SE.do", method = RequestMethod.GET)
	public String question(Model model) {

		return "_admin/admin_Question_SE";
	}
	
	@RequestMapping(value = "/_admin/admin_QuestionAnswer1_SE.do", method = RequestMethod.GET)
	public String questionAnswer1(Model model) {

		return "_admin/admin_QuestionAnswer1_SE";
	}
	
	@RequestMapping(value = "/_admin/admin_QuestionAnswer2_SE.do", method = RequestMethod.GET)
	public String questionAnswer2(Model model) {

		return "_admin/admin_QuestionAnswer2_SE";
	}
	
	@RequestMapping(value = "/_admin/admin_QuestionRead_SE.do", method = RequestMethod.GET)
	public String questionRead(Model model) {

		return "_admin/admin_QuestionRead_SE";
	}
}
