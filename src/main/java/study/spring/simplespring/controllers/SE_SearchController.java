package study.spring.simplespring.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import study.spring.simplespring.helper.WebHelper;
import study.spring.simplespring.model.ReqMatch;
import study.spring.simplespring.model.User;
import study.spring.simplespring.service.ReqMatchService;

@Controller
public class SE_SearchController {
	
	 @Autowired
	 WebHelper webHelper;
	 
	 @Autowired
	 ReqMatchService reqMatchService;
	 
	 @Value("#{servletContext.contextPath}")
		String contextPath;
	 
	@RequestMapping(value = "/_mypage/search_SE.do", method = RequestMethod.GET)
	public String view(Model model) {

		return "_mypage/search_SE";
	} 
	@RequestMapping(value = "/_mypage/searchDateOpen_SE.do", method = RequestMethod.GET)
	public ModelAndView dateOpen(Model model) {
		  
		return new ModelAndView("_mypage/searchDateOpen_SE");
	} 
	@RequestMapping(value = "/_mypage/searchDateRequest_SE.do", method = RequestMethod.GET)
	public ModelAndView dateReq(Model model) {
		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {

			String login = loginInfo.getUserName();

			model.addAttribute("login", login);
		}
		
		int MemberId = loginInfo.getMemberId();
		String Choose_Date = webHelper.getString("Choose_Date");
		String Select_Date = webHelper.getString("Select_Date");
		
		ReqMatch input = new ReqMatch();
		input.setMemberId(MemberId);
		input.setChoose_Date(Choose_Date);
		input.setSelect_Date(Select_Date);
	
		
		try {
			
			reqMatchService.addReqMatch(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		String redirectUrl = contextPath + "_mypage/searchDateRequest_SE.do?Choose_Date=" + input.getChoose_Date();
		return webHelper.redirect(redirectUrl, "선택");
	} 
	@RequestMapping(value = "/_mypage/searchRequestConfirm_SE.do", method = RequestMethod.GET)
	public String reqConfirm(Model model) {

		return "_mypage/searchRequestConfirm_SE";
	} 
}
