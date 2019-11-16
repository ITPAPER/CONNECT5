package study.spring.simplespring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SE_SearchController {
	@RequestMapping(value = "/_mypage/search_SE.do", method = RequestMethod.GET)
	public String view(Model model) {

		return "_mypage/search_SE";
	} 
	@RequestMapping(value = "/_mypage/searchDateOpen_SE.do", method = RequestMethod.GET)
	public String dateOpen(Model model) {

		return "_mypage/searchDateOpen_SE";
	} 
	@RequestMapping(value = "/_mypage/searchDateRequest_SE.do", method = RequestMethod.GET)
	public String dateReq(Model model) {

		return "_mypage/searchDateRequest_SE";
	} 
	@RequestMapping(value = "/_mypage/searchRequestConfirm_SE.do", method = RequestMethod.GET)
	public String reqConfirm(Model model) {

		return "_mypage/searchRequestConfirm_SE";
	} 
}
