package study.spring.simplespring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class YB_ServiceController {

	@RequestMapping(value = "/_service/MembershipRegisGuide_YB.do", method = RequestMethod.GET)
	public String MembershipRegisGuide(Model model) {

		return "_service/MembershipRegisGuide_YB";
	}
	
	@RequestMapping(value = "/_service/ServiceProcedures_YB.do", method = RequestMethod.GET)
	public String ServiceProcedures(Model model) {

		return "_service/ServiceProcedures_YB";
	}
	
	@RequestMapping(value = "/_service/MemberStatus_YB.do", method = RequestMethod.GET)
	public String MemberStatus(Model model) {

		return "_service/MemberStatus_YB";
	}
}
