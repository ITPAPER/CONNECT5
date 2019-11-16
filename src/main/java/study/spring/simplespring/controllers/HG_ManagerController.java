package study.spring.simplespring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HG_ManagerController {

	@RequestMapping(value = "/_info/manager_HG.do", method = RequestMethod.GET)
	public String Map(Model model) {
		
		

		return "_info/manager_HG";

	}
}
