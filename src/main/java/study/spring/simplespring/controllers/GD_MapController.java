package study.spring.simplespring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GD_MapController {
	
	@RequestMapping(value = "/_info/map_GD.do", method = RequestMethod.GET)
	public String Map(Model model) {
		
		

		return "_info/map_GD";

	}
	
	

}
