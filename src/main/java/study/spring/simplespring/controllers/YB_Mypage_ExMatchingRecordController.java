package study.spring.simplespring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class YB_Mypage_ExMatchingRecordController {

	@RequestMapping(value = "/_mypage/Ex-MatchingRecord_YB.do", method = RequestMethod.GET)
	public String ExMatchingRecord(Model model) {

		return "_mypage/Ex-MatchingRecord_YB";
	}
	
	@RequestMapping(value = "/_mypage/Ex-MatchingRecord2_YB.do", method = RequestMethod.GET)
	public String ExMatchingRecord2(Model model) {

		return "_mypage/Ex-MatchingRecord2_YB";
	}
}
