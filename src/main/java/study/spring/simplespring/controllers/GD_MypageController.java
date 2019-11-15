package study.spring.simplespring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GD_MypageController {
	
	@RequestMapping(value = "/_mypage/myInfo_GD.do", method = RequestMethod.GET)
	public String findid(Model model) {
		
		

		return "_mypage/myInfo_GD";

	}
	

}
