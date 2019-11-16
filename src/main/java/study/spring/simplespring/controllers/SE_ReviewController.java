package study.spring.simplespring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SE_ReviewController {
	@RequestMapping(value = "/_coach/review_SE.do", method = RequestMethod.GET)
	public String view(Model model) {

		return "_coach/review_SE";
	} 
	
	@RequestMapping(value = "/_coach/reviewWrite_SE.do", method = RequestMethod.GET)
	public String write(Model model) {

		return "_coach/reviewWrite_SE";
	}
	
	@RequestMapping(value = "/_coach/reviewRead1_SE.do", method = RequestMethod.GET)
	public String read1(Model model) {

		return "_coach/reviewRead1_SE";
	}
	
	@RequestMapping(value = "/_coach/reviewRead2_SE.do", method = RequestMethod.GET)
	public String read2(Model model) {

		return "_coach/reviewRead2_SE";
	}
}
