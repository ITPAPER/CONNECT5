package study.spring.simplespring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class YH_admin_userApply {

	@RequestMapping(value = "/_admin/admin_userApply_YH.do", method = RequestMethod.GET)
	public String view(Model model) {

		return "_admin/admin_userApply_YH";

	}
}
