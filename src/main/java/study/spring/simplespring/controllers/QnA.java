package study.spring.simplespring.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class QnA {
	@RequestMapping(value = "/_coach/QnA_SE.do", method = RequestMethod.GET)
	public String view(Model model) {

		return "_coach/QnA_SE";
	} 
	
	@RequestMapping(value = "/_coach/QnARead1_SE.do", method = RequestMethod.GET)
	public String read(Model model) {

		return "_coach/QnARead1_SE";
	}

	
	
}
