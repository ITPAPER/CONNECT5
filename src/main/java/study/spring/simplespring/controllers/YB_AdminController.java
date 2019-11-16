package study.spring.simplespring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class YB_AdminController {

	@RequestMapping(value = "/_admin/admin_MngBoard_WeddingStory_YB.do", method = RequestMethod.GET)
	public String MngBoard_WeddingStory(Model model) {

		return "_admin/admin_MngBoard_WeddingStory_YB";
	}
	
	@RequestMapping(value = "/_admin/admin_MngBoard_WeddingStoryRead1_YB.do", method = RequestMethod.GET)
	public String MngBoard_WeddingStoryRead1(Model model) {

		return "_admin/admin_MngBoard_WeddingStoryRead1_YB";
	}
	
	@RequestMapping(value = "/_admin/admin_MngBoard_WeddingStoryRead2_YB.do", method = RequestMethod.GET)
	public String MngBoard_WeddingStoryRead2(Model model) {

		return "_admin/admin_MngBoard_WeddingStoryRead2_YB";
	}
	
	@RequestMapping(value = "/_admin/admin_MngBoard_WeddingStoryRead3_YB.do", method = RequestMethod.GET)
	public String MngBoard_WeddingStoryRead3(Model model) {

		return "_admin/admin_MngBoard_WeddingStoryRead3_YB";
	}
	
	@RequestMapping(value = "/_admin/admin_MngBoard_WeddingStoryWrite_YB.do", method = RequestMethod.GET)
	public String MngBoard_WeddingStoryWrite(Model model) {

		return "_admin/admin_MngBoard_WeddingStoryWrite_YB";
	}
}