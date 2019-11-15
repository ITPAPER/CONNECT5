package study.spring.simplespring.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberLevel {

	@RequestMapping(value = "/_service/MemberLevel_YH.do", method = RequestMethod.GET)
	public String view(Model model) {

		return "_service/MemberLevel_YH";

	}

}
