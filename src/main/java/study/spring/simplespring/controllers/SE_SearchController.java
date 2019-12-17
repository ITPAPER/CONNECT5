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
	public ModelAndView view(Model model) {
		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {

			String login = loginInfo.getUserName();

			model.addAttribute("login", login);
		}

		String Choose_Date = webHelper.getString("Choose_Date");
		int isSpUser = loginInfo.getIsadmin(); 
		
		int MemberId = loginInfo.getMemberId();
		
		ReqMatch input = new ReqMatch();
		input.setChoose_Date(Choose_Date);
		input.setMemberId(MemberId);
		
		
		ReqMatch output = null;
		
		// ******************************************** 구분할 컬럼 정한 후 수정 
		if (isSpUser != 0) {
			try {
				// 데이터 조회
				output = reqMatchService.getReqMatchItem(input);
				
			} catch (Exception e) {
				return webHelper.redirect(null, e.getLocalizedMessage());
			}
			
			String redirectUrl = contextPath + "/_mypage/searchview_SE.do?Choose_Date=" + output.getChoose_Date();
			return webHelper.redirect(redirectUrl," 선택한 날짜가 있네요! 확인해보세요! ");
		}
		
		model.addAttribute("Choose_Date",Choose_Date);
		return new ModelAndView("_mypage/search_SE");
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

		ReqMatch input = new ReqMatch();
		input.setMemberId(MemberId);
		input.setChoose_Date(Choose_Date);

		try {

			reqMatchService.addReqMatch(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		String redirectUrl = contextPath + "/_mypage/searchview_SE.do?Choose_Date=" + input.getChoose_Date();
		return webHelper.redirect(redirectUrl, input.getChoose_Date()+ " 선택 하셨습니다. ");
	}
	
	@RequestMapping(value = "/_mypage/searchview_SE.do", method = RequestMethod.GET)
	public ModelAndView reqConfirm(Model model) {
		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {

			String login = loginInfo.getUserName();
			
			model.addAttribute("login", login);
		}
		
		String Choose_Date = webHelper.getString("Choose_Date");
		int MemberId = loginInfo.getMemberId();
		
		ReqMatch input = new ReqMatch();
		input.setChoose_Date(Choose_Date);
		input.setMemberId(MemberId);
		
		ReqMatch output = null;
		
		try {
			// 데이터 조회
			output = reqMatchService.getReqMatchItem(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		model.addAttribute("output",output);
		return new ModelAndView("_mypage/searchview_SE");
	}
}
