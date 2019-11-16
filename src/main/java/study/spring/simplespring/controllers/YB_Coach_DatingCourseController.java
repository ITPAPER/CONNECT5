package study.spring.simplespring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class YB_Coach_DatingCourseController {

	@RequestMapping(value = "/_coach/DatingCourse_YB.do", method = RequestMethod.GET)
	public String DatingCourse(Model model) {

		return "_coach/DatingCourse_YB";
	}
	
	@RequestMapping(value = "/_coach/DatingCourse2_YB.do", method = RequestMethod.GET)
	public String DatingCourse2(Model model) {

		return "_coach/DatingCourse2_YB";
	}
}
