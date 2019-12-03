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
	public ModelAndView addok_HG(Model model) {
		String UserId = webHelper.getString("UserId");
		String UserPw = webHelper.getString("UserPw");
		String UserName = webHelper.getString("UserName");
		String BirthDate = webHelper.getString("BirthDate");
		int Gender = webHelper.getInt("Gender");
		int IsMarried = webHelper.getInt("IsMarried");
		String Mobile = webHelper.getString("Mobile");
		String TEL = webHelper.getString("TEL");
		String Email = webHelper.getString("Email");
		String PostCode = webHelper.getString("PostCode");
		String BasicAddress = webHelper.getString("BasicAddress");
		String StateAddress = webHelper.getString("StateAddress");
		String DetailAddress = webHelper.getString("DetailAddress");
		String Join_Date = webHelper.getString("Join_Date");
		
		if (UserId == null)						{ return webHelper.redirect(null, "아이디를 입력하세요."); }
		if (!regexHelper.isEngNum(UserId))		{ return webHelper.redirect(null, "아이디는 영어와 숫자로만 입력하세요."); }
		if (UserPw == null)						{ return webHelper.redirect(null, "비밀번호를 입력하세요."); }
		if (!regexHelper.isEngNum(UserPw))		{ return webHelper.redirect(null, "비밀번호는 영어와 숫자로만 입력하세요."); }
		if (UserName == null)					{ return webHelper.redirect(null, "이름을 입력하세요."); }
		if (!regexHelper.isKor(UserName))		{ return webHelper.redirect(null, "이름은 한글만 가능합니다."); }
		if (BirthDate == null)					{ return webHelper.redirect(null, "생년월일을 입력하세요."); }
		if (Gender == 0)						{ return webHelper.redirect(null, "성별을 선택해주세요."); }
		if (IsMarried == 0)						{ return webHelper.redirect(null, "결혼여부를 선택해주세요."); }
		if (Mobile == null)						{ return webHelper.redirect(null, "핸드폰번호를 입력하세요."); }
		if (!regexHelper.isCellPhone(Mobile))	{ return webHelper.redirect(null, "핸드폰번호는 숫자로만 입력하세요."); }
		if (!regexHelper.isTel(TEL))			{ return webHelper.redirect(null, "전화번호는 숫자로만 입력하세요."); }
		if (Email == null)						{ return webHelper.redirect(null, "이메일을 입력해주세요."); }
		if (!regexHelper.isEmail(Email))		{ return webHelper.redirect(null, "이메일 형식에 맞춰주세요."); }
		if (PostCode == null)					{ return webHelper.redirect(null, "우편번호 찾기를 눌러주세요"); }
		if (DetailAddress == null)				{ return webHelper.redirect(null, "상세주소를 입력해주세요."); }
		
		
		
		
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
		String redirectUrl = contextPath + "/_join/join3_HG.do?memberId=" + input.getMemberId();
		return webHelper.redirect(redirectUrl,"회원가입이 완료되었습니다.");
	}
	

	@RequestMapping(value = "/_join/join3_HG.do", method = RequestMethod.GET)
	public String join3(Model model) {
		
		

		return "_join/join3_HG";

	}
}
