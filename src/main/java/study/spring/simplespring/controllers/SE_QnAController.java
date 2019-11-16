package study.spring.simplespring.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SE_QnAController {
	@RequestMapping(value = "/_coach/QnA_SE.do", method = RequestMethod.GET)
	public String view(Model model) {

		return "_coach/QnA_SE";
	} 
	
	@RequestMapping(value = "/_coach/QnAWrite_SE.do", method = RequestMethod.GET)
	public String write(Model model) {

		return "_coach/QnAWrite_SE";
	}
	
	@RequestMapping(value = "/_coach/QnARead1_SE.do", method = RequestMethod.GET)
	public String read1(Model model) {

		return "_coach/QnARead1_SE";
	}
	
	@RequestMapping(value = "/_coach/QnARead2_SE.do", method = RequestMethod.GET)
	public String read2(Model model) {

		return "_coach/QnARead2_SE";
	}
	
	
}
