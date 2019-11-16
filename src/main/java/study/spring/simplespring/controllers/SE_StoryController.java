package study.spring.simplespring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SE_StoryController {
	@RequestMapping(value = "/_info/story_SE.do", method = RequestMethod.GET)
	public String view(Model model) {

		return "_info/story_SE";
	}
	
	@RequestMapping(value = "/_info/storyRead1_SE.do", method = RequestMethod.GET)
	public String read1(Model model) {

		return "_info/storyRead1_SE";
	}
	
	@RequestMapping(value = "/_info/storyRead2_SE.do", method = RequestMethod.GET)
	public String read2(Model model) {

		return "_info/storyRead2_SE";
	}
}
