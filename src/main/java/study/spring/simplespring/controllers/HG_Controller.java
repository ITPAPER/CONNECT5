package study.spring.simplespring.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import study.spring.simplespring.helper.RegexHelper;
import study.spring.simplespring.helper.WebHelper;
import study.spring.simplespring.model.Test;
import study.spring.simplespring.model.User;
import study.spring.simplespring.service.TestService;
import study.spring.simplespring.service.UserService;
import study.spring.simplespring.service.impl.UserServiceImpl;

@Controller
public class HG_Controller {

	@Autowired
	WebHelper webHelper;

	@Autowired
	RegexHelper regexHelper;

	@Autowired
	UserService userService;

	@Autowired
	TestService testService;

	@Autowired
	UserServiceImpl userServiceImpl;

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

		if (UserId == null) {
			return webHelper.redirect(null, "아이디를 입력하세요.");
		}
		if (!regexHelper.isEngNum(UserId)) {
			return webHelper.redirect(null, "아이디는 영어와 숫자로만 입력하세요.");
		}
		if (UserPw == null) {
			return webHelper.redirect(null, "비밀번호를 입력하세요.");
		}
		if (!regexHelper.isEngNum(UserPw)) {
			return webHelper.redirect(null, "비밀번호는 영어와 숫자로만 입력하세요.");
		}
		if (UserName == null) {
			return webHelper.redirect(null, "이름을 입력하세요.");
		}
		if (!regexHelper.isKor(UserName)) {
			return webHelper.redirect(null, "이름은 한글만 가능합니다.");
		}
		if (BirthDate == null) {
			return webHelper.redirect(null, "생년월일을 입력하세요.");
		}
		
		if (Mobile == null) {
			return webHelper.redirect(null, "핸드폰번호를 입력하세요.");
		}
		if (!regexHelper.isCellPhone(Mobile)) {
			return webHelper.redirect(null, "핸드폰번호는 숫자로만 입력하세요.");
		}
		
		if (Email == null) {
			return webHelper.redirect(null, "이메일을 입력해주세요.");
		}
		if (!regexHelper.isEmail(Email)) {
			return webHelper.redirect(null, "이메일 형식에 맞춰주세요.");
		}
		if (PostCode == null) {
			return webHelper.redirect(null, "우편번호 찾기를 눌러주세요");
		}
		if (DetailAddress == null) {
			return webHelper.redirect(null, "상세주소를 입력해주세요.");
		}

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
		return webHelper.redirect(redirectUrl, "회원가입이 완료되었습니다.");
	}

	@RequestMapping(value = "/_join/join3_HG.do", method = RequestMethod.GET)
	public String join3(Model model) {

		return "_join/join3_HG";

	}

	/**
	 * -------------------------------- 회원가입 controller 끝 --------------------------
	 */

	@RequestMapping(value = "/_admin/admin_userManager1_HG.do", method = RequestMethod.GET)
	public String admin_userManager1(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {

			String login = loginInfo.getUserName();

			model.addAttribute("login", login);
		}

		return "_admin/admin_userManager1_HG";

	}

	@RequestMapping(value = "/_admin/admin_userManager2_HG.do", method = RequestMethod.GET)
	public String admin_userManager2(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}

		return "_admin/admin_userManager2_HG";

	}

	/**
	 * -------------------------------- 관리자 회원관리 controller 끝
	 * --------------------------
	 */

	@RequestMapping(value = "/_info/partner_HG.do", method = RequestMethod.GET)
	public String partner(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}
		return "_info/partner_HG";

	}

	/**
	 * -------------------------------- 파트너 controller 끝 --------------------------
	 */

	@RequestMapping(value = "/_info/manager_HG.do", method = RequestMethod.GET)
	public String manager(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}

		return "_info/manager_HG";

	}

	/**
	 * -------------------------------- 매니저 controller 끝 --------------------------
	 */

	@RequestMapping(value = "/_login/login_HG.do", method = RequestMethod.GET)
	public String location(Model model) {

		return "_login/login_HG";

	}

	@RequestMapping(value = "/_login/loginOk.do", method = RequestMethod.POST)
	public ModelAndView loginaction(Model model, HttpServletRequest request, HttpServletResponse response) {

		String UserId = webHelper.getString("UserId");

		// LocalDate selectDate = LocalDate.now();

		String UserPw = webHelper.getString("UserPw");

		User input = new User();
		input.setUserId(UserId);
		input.setUserPw(UserPw);

		User loginInfo = null;
		try {

			loginInfo = userService.selectLoginInfo(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		webHelper.setSession("loginInfo", loginInfo);

		int admin = loginInfo.getIsadmin();
		if (admin == 1) {
			return new ModelAndView("_admin/admin_main_SE");
		}

		String logininfo = loginInfo.getUserName();

		model.addAttribute("login", logininfo);
		String viewPath = "home";
		return new ModelAndView(viewPath);

	}

	@RequestMapping(value = "/_login/loginOut.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView logout(Model model, HttpServletRequest request, HttpServletResponse response) {

		webHelper.removeAllSession();

		return webHelper.redirect(request.getContextPath() + "/", "연-결을 이용해 주셔서 감사합니다. 안녕히가세요.");
	}

	/**
	 * -------------------------------- 로그인 controller 끝 --------------------------
	 */

	@RequestMapping(value = "/_mypage/withdrawal1_HG.do", method = RequestMethod.GET)
	public ModelAndView withdrawal1(Model model) {

		return new ModelAndView("_mypage/withdrawal1_HG");

	}

	@RequestMapping(value = "/_mypage/withdrawal2_HG.do", method = RequestMethod.GET)
	public ModelAndView withdrawal2(Model model) {

		return new ModelAndView("_mypage/withdrawal2_HG");

	}

	/**
	 * -------------------------------- 탈퇴 controller 끝 --------------------------
	 */

	@RequestMapping(value = "/_mypage/personal_information1_HG.do", method = RequestMethod.GET)
	public ModelAndView personal_information1(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		
		if (loginInfo == null) {
			String redirectUrl = contextPath + "/_login/login_HG.do";
			return webHelper.redirect(redirectUrl, "로그인 후 이용해주세요");
		}
		
		int MemberId = loginInfo.getMemberId();
		String UserId = loginInfo.getUserId();
		
		
		User input = new User();
		input.setMemberId(MemberId);
		input.setUserId(UserId);
		

		User output = null;
		
		try {
			output = userService.getUserItem(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("output", output);
		
		return new ModelAndView("_mypage/personal_information1_HG");
	}

	@RequestMapping(value = "/_mypage/personal_information1ok_HG.do", method = RequestMethod.POST)
	public ModelAndView personal_information1ok(Model model) {
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		int MemberId = loginInfo.getMemberId();
		String UserId = loginInfo.getUserId();
		String UserPw = loginInfo.getUserPw();
		
		User input = new User();
		input.setMemberId(MemberId);
		input.setUserId(UserId);
		input.setUserPw(UserPw);
		
		User output = null;
		try {
			userService.getUserItem(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		if (UserPw != UserPw) {
			String redirectUrl = contextPath + "/_mypage/personal_information1_HG.do";
			return webHelper.redirect(redirectUrl, "비밀번호가 틀렸습니다.");
		}
			
		model.addAttribute("output", output);
		
		return new ModelAndView("_mypage/personal_information2_HG");
	}
	
	

	@RequestMapping(value = "/_mypage/personal_information2_HG.do", method = RequestMethod.GET)
	public ModelAndView personal_information2(Model model) {

		return new ModelAndView("_mypage/personal_information2_HG");

	}

	@RequestMapping(value = "/_mypage/personal_information2_HG.do", method = RequestMethod.POST)
	public ModelAndView personal_information2ok(Model model) {

		return new ModelAndView("_mypage/personal_information2_HG");

	}

	/**
	 * -------------------------------- 개인정보수정 controller 끝
	 * --------------------------
	 */

	@RequestMapping(value = "/_test/lovescore1_HG.do", method = RequestMethod.GET)
	public String lovescore1(Model model) {

		return "_test/lovescore1_HG";

	}

	@RequestMapping(value = "/_test/lovescore2_HG.do", method = RequestMethod.GET)
	public String lovescore2(Model model) {
		int TestQ3 = webHelper.getInt("TestQ3");

		Test input = new Test();
		input.setTestQ3(TestQ3);

		model.addAttribute("TestQ3", TestQ3);

		return "_test/lovescore2_HG";

	}

	@RequestMapping(value = "/_test/lovescore3_HG.do", method = RequestMethod.GET)
	public ModelAndView list(Model model) {
		int TestQ3 = webHelper.getInt("TestQ3");
		int TestQ4 = webHelper.getInt("TestQ4");
		String ResultTitle = webHelper.getString("ResultTitle");
		String ResultContent = webHelper.getString("ResultContent");

		Test input = new Test();
		input.setTestQ3(TestQ3);
		input.setTestQ4(TestQ4);
		input.setResultTitle(ResultTitle);
		input.setResultContent(ResultContent);

		List<Test> output = null;

		try {
			output = testService.getTestList(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		model.addAttribute("TestQ4", TestQ4);
		model.addAttribute("TestQ3", TestQ3);
		model.addAttribute("ResultContent", ResultContent);
		model.addAttribute("ResultTitle", ResultTitle);
		model.addAttribute("output", output);

		return new ModelAndView("_test/lovescore3_HG");

	}

	@RequestMapping(value = "/_test/propensity1_HG.do", method = RequestMethod.GET)
	public String propensity1(Model model) {

		return "_test/propensity1_HG";

	}

	@RequestMapping(value = "/_test/propensity2_HG.do", method = RequestMethod.GET)
	public String propensity2(Model model) {
		int TestQ1 = webHelper.getInt("TestQ1");

		Test input = new Test();
		input.setTestQ1(TestQ1);

		model.addAttribute("TestQ1", TestQ1);
		return "_test/propensity2_HG";

	}

	@RequestMapping(value = "/_test/propensity3_HG.do", method = RequestMethod.GET)
	public ModelAndView list2(Model model) {
		int TestQ1 = webHelper.getInt("TestQ1");
		int TestQ2 = webHelper.getInt("TestQ2");
		String ResultTitle = webHelper.getString("ResultTitle");
		String ResultContent = webHelper.getString("ResultContent");

		Test input = new Test();
		input.setTestQ1(TestQ1);
		input.setTestQ2(TestQ2);
		input.setResultTitle(ResultTitle);
		input.setResultContent(ResultContent);

		List<Test> output = null;

		try {
			output = testService.getTestList1(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		model.addAttribute("TestQ1", TestQ1);
		model.addAttribute("TestQ2", TestQ2);
		model.addAttribute("ResultContent", ResultContent);
		model.addAttribute("ResultTitle", ResultTitle);
		model.addAttribute("output", output);

		return new ModelAndView("_test/propensity3_HG");

	}

	@RequestMapping(value = "/_test/idealtype_HG.do", method = RequestMethod.GET)
	public String Map(Model model) {

		return "_test/idealtype_HG";

	}

	/**
	 * -------------------------------- 테스트 controller 끝 --------------------------
	 */
}
