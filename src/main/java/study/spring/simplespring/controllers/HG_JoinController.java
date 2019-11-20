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
import study.spring.simplespring.model.User;
import study.spring.simplespring.service.UserService;


@Controller
public class HG_JoinController {
	
	@Autowired
	WebHelper webHelper;
	
	@Autowired
	RegexHelper regexHelper;
	
	@Autowired
	UserService userService;
	
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	@RequestMapping(value = "/_join/join1_HG.do", method = RequestMethod.GET)
	public String join1(Model model) {
		
		

		return "_join/join1_HG";

	}
	
	@RequestMapping(value = "/_join/join2_HG.do", method = RequestMethod.GET)
	public ModelAndView join2(Model model) {
		
		return new ModelAndView("_join/join2_HG");

	}
	
	@RequestMapping(value = "/_join/join2_HG.do", method = RequestMethod.POST)
	public ModelAndView join2ok_HG(Model model) {
		String UserId = webHelper.getString("UserId");
		String UserPw = webHelper.getString("UserPw");
		String UserName = webHelper.getString("UserName");
		String BirthDate = webHelper.getString("BirthDate");
		boolean Gender = webHelper.getBoolean("Gender");
		boolean IsMarried = webHelper.getBoolean("IsMarried");
		String Mobile = webHelper.getString("Mobile");
		String TEL = webHelper.getString("TEL");
		String Email = webHelper.getString("Email");
		String PostCode = webHelper.getString("PostCode");
		String BasicAddress = webHelper.getString("BasicAddress");
		String StateAddress = webHelper.getString("StateAddress");
		String DetailAddress = webHelper.getString("DetailAddress");
		String Join_Date = webHelper.getString("Join_Date");
		
		User input = new User();
		input.setUserId(UserId);
		input.setUserPw(UserPw);
		input.setUserName(UserName);
		input.setBirthDate(BirthDate);
		input.setGender(Gender);
		input.setIsMarried(IsMarried);
		input.setMobile(Mobile);
		input.setTEL(TEL);
		input.setEmail(Email);
		input.setPostCode(PostCode);
		input.setBasicAddress(BasicAddress);
		input.setStateAddress(StateAddress);
		input.setDetailAddress(DetailAddress);
		input.setJoin_Date(Join_Date);
		
		try {
			userService.addUser(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		String redirectUrl = contextPath + "/_join/view.do?memberId=" + input.getMemberId();
		return webHelper.redirect(redirectUrl, "저장되었습니다.");
	}
	

	@RequestMapping(value = "/_join/join3_HG.do", method = RequestMethod.GET)
	public String join3(Model model) {
		
		

		return "_join/join3_HG";

	}
}
