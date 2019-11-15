package study.spring.simplespring.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class QnAController {

	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	@RequestMapping(value = "/QnA/QnARead1_SE.do", method = RequestMethod.GET)
    public ModelAndView list(Model model) {
        return new ModelAndView("QnA/QnARead1_SE");
    }
    
}
