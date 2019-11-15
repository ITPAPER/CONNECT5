package study.spring.simplespring.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import study.spring.simplespring.helper.RegexHelper;
import study.spring.simplespring.helper.WebHelper;

@Controller
public class QnAController {
	@Autowired
	WebHelper webHelper;

	@Autowired
	RegexHelper regexHelper;

	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	@RequestMapping(value = "/QnA/list.do", method = RequestMethod.GET)
    public ModelAndView list(Model model) {
        String viewPath = "QnA/list";
        return new ModelAndView(viewPath);
    }
    
}
