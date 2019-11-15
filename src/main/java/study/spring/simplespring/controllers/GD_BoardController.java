package study.spring.simplespring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GD_BoardController {
	
	@RequestMapping(value = "/_coach/loveColumn_GD.do", method = RequestMethod.GET)
	public String lovecolumn(Model model) {
		
		

		return "_coach/loveColumn_GD";

	}
	@RequestMapping(value = "/_coach/readColumn_GD.do", method = RequestMethod.GET)
	public String readlovecolumn(Model model) {
		
		

		return "_coach/readColumn_GD";

	}
	@RequestMapping(value = "/_coach/meetingTip_GD.do", method = RequestMethod.GET)
	public String tip(Model model) {
		
		

		return "_coach/meetingTip_GD";

	}
	@RequestMapping(value = "/_coach/readTip_GD.do", method = RequestMethod.GET)
	public String readtip(Model model) {
		
		

		return "_coach/readTip_GD";

	}
	
	
	

}
