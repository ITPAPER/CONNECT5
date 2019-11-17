package study.spring.simplespring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class YH_admin_userManagement {

	@RequestMapping(value = "/_admin/admin_userManagement_YH.do", method = RequestMethod.GET)
	public String view(Model model) {

		return "_admin/admin_userManagement_YH";

	}

	@RequestMapping(value = "/_admin/admin_userManagementRead_YH.do", method = RequestMethod.GET)
	public String read(Model model) {

		return "_admin/admin_userManagementRead_YH";

	}

	@RequestMapping(value = "/_admin/admin_userManagementRead2_YH.do", method = RequestMethod.GET)
	public String read2(Model model) {

		return "_admin/admin_userManagementRead2_YH";

	}

	@RequestMapping(value = "/_admin/admin_userManagementWrite_YH.do", method = RequestMethod.GET)
	public String write(Model model) {

		return "_admin/admin_userManagementWrite_YH";

	}

}