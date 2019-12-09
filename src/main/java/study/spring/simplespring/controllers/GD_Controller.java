package study.spring.simplespring.controllers;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import study.spring.simplespring.helper.MailHelper;
import study.spring.simplespring.helper.PageData;
import study.spring.simplespring.helper.RegexHelper;
import study.spring.simplespring.helper.WebHelper;
import study.spring.simplespring.model.Board;
import study.spring.simplespring.model.Email;
import study.spring.simplespring.model.Manager;
import study.spring.simplespring.model.Payment;
import study.spring.simplespring.model.User;
import study.spring.simplespring.service.BoardService;
import study.spring.simplespring.service.ManagerService;
import study.spring.simplespring.service.PaymentService;
import study.spring.simplespring.service.UserService;


@Controller
public class GD_Controller {

	@Autowired
	WebHelper webHelper;

	@Autowired
	RegexHelper regexHelper;
	
	@Autowired
	MailHelper mailHelper;

	@Autowired
	UserService userService;
	
	@Autowired
	PaymentService paymentService;
	
	@Autowired
	ManagerService managerService;
	
	@Autowired
	BoardService boardService;

	@Value("#{servletContext.contextPath}")
	String contextPath;


	@RequestMapping(value = "/_payment/mustInput_SE.do", method = RequestMethod.GET)
	public ModelAndView mustinput(Model model) {
		
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		if (loginInfo == null) {
			String redirectUrl = contextPath + "/_login/login_HG.do";
			return webHelper.redirect(redirectUrl, "濡쒓렇�씤 �썑 �씠�슜�빐二쇱꽭�슂");
		}
		
		Integer memberlv = (Integer)loginInfo.getMember_Lv();
		
		
		if (memberlv != 0) {
			String redirectUrl = contextPath + "/_payment/payment_GD.do";
			return webHelper.redirect(redirectUrl, "寃곗젣�럹�씠吏�濡� �씠�룞�빀�땲�떎.");
		}else if(memberlv == 0){
			return new ModelAndView("_payment/mustInput_SE");
		}
		return new ModelAndView("_payment/mustInput_SE");
	}

	@RequestMapping(value = "/_payment/mustInputok.do", method = RequestMethod.POST)
	public ModelAndView mustInputok(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		Integer memberid = (Integer) loginInfo.getMemberId();
	

	
		String job = webHelper.getString("job");
		String edu_lv = webHelper.getString("edu");
		int height = webHelper.getInt("height");
		String bldtype = webHelper.getString("blood");
		int date_loc = webHelper.getInt("place");
		int personality = webHelper.getInt("personality");
		int sal_annual = webHelper.getInt("income");
		String user_img = webHelper.getString("profile_img");

		
		User input = new User();
		input.setMemberId(memberid);
		input.setJob(job);
		input.setEdu_Lv(edu_lv);
		input.setHeight(height);
		input.setBldType(bldtype);
		input.setDate_Loc(date_loc);
		input.setSal_Annual(sal_annual);
		input.setUser_Img(user_img);
		input.setPersonality(personality);
	
		try {
			userService.editUser(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		String redirectUrl = contextPath + "/_payment/payment_GD.do";
		return webHelper.redirect(redirectUrl, "ㅎㅎ");
	}

	@RequestMapping(value = "/_payment/payment_GD.do", method = RequestMethod.GET)
	public ModelAndView payment(Model model) {

		return new ModelAndView("_payment/payment_GD");

	}

	@RequestMapping(value = "/_payment/payok.do", method = RequestMethod.POST)
	public ModelAndView payok(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");
		Integer memberid = (Integer) loginInfo.getMemberId();
		String username = (String)loginInfo.getUserName();
		
		int servicetype = webHelper.getInt("level");
		int pmttype = webHelper.getInt("pay");
		int servicebank = webHelper.getInt("bank");
		String payername = webHelper.getString("payName");
		int card = webHelper.getInt("cardType");
		int pmtplan = webHelper.getInt("installment");
		/** 2) 데이터 조회하기 */
		// 조회에 필요한 조건값(검색어)를 Beans에 담는다.
		Payment input = new Payment();
		input.setServicetype(servicetype);
		input.setServicebank(servicebank);
		input.setPmtplan(pmtplan);
		input.setPayername(payername);
		input.setCard(card);
		input.setPmttype(pmttype);
		input.setMemberid(memberid);
		input.setUsername(username);
	
		try {
			paymentService.createPayment(input);
			System.out.println(input);
		} catch (Exception e) {
			return webHelper.redirect(null, "DB ㅎㅎ");
		}

		String redirectUrl = contextPath + "/_payment/pay_ok_GD.do";
		return webHelper.redirect(redirectUrl, "ㅎㅎ");

	}
	
	@RequestMapping(value = "/_payment/pay_ok_GD.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String paysuccess(Model model) {

	
		return "_payment/pay_ok_GD";

	}

	@RequestMapping(value = "/_findAccount/FindId_GD.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView findid(Model model) {
		
		
		return new ModelAndView ("_findAccount/FindId_GD");

	}
	
	@ResponseBody
	@RequestMapping(value = "/_findAccount/FindId_GD_ok.do", method =RequestMethod.POST, produces="text/plain;charset=UTF-8")
	public  ModelAndView findidok(Model model) {
		
		String username = webHelper.getString("user_name");
		String useremail = webHelper.getString("user_email");
		
		User input = new User();
		input.setUserName(username);
		input.setEmail(useremail);
		
		Email email = new Email();
		
		email.setTo("");
		email.setReceiver("user_email");
		email.setContent("user_name 님의 비밀번호는 ran 입니다.");
		email.setSubject("user_name (주)연-결 비밀번호 찾기 인증번호 입니다.");
		
		String receive = useremail;
		String subject = "(주)연-결 아이디 찾기 인증번호 입니다. ";
		String content = username + "님의 인증번호는 ran 입니다.";
		
		
		try {
			mailHelper.sendMail(receive,subject,content);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

	            return webHelper.redirect(null, "메일 발송에 실패했습니다.");
		}
		
		
		User req = null;
		
		try {
			req = userService.selectFindaccount(input);
		}catch(Exception e) {
		}
		
		System.out.println(req);
		Gson gson = new Gson();
		return new ModelAndView(gson.toJson(req));

		}

	@RequestMapping(value = "/_findAccount/FindPw_GD.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String findpw(Model model) {

		return "_findAccount/FindPw_GD";

	}

	@RequestMapping(value = "/_findAccount/CheckId_GD.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String checkid(Model model) {

		return "_findAccount/CheckId_GD";

	}

	@RequestMapping(value = "/_findAccount/CheckPw_GD.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String checkpw(Model model) {

		return "_findAccount/CheckPw_GD";

	}

	@RequestMapping(value = "/_info/map_GD.do", method = RequestMethod.GET)
	public String Map(Model model) {

		return "_info/map_GD";

	}

	@RequestMapping(value = "/_mypage/myInfo_GD.do", method = RequestMethod.GET)
	public ModelAndView myinfo(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");
		List<Manager> managerList = null;
	

		if (loginInfo == null) {
			String redirectUrl = contextPath + "/_login/login_HG.do";
			return webHelper.redirect(redirectUrl, "ㅎㅎ");
			
		} else {
			String name = (String) loginInfo.getUserName();
			Integer date_rest = (Integer) loginInfo.getDate_Rest();
			Integer memberlv = (Integer) loginInfo.getMember_Lv();
			Integer managerid = (Integer) loginInfo.getManagerId();

			model.addAttribute("username", name);
			model.addAttribute("date_rest", date_rest);
			model.addAttribute("memberlv", memberlv);
			model.addAttribute("managerid", managerid);

		}
		
		try {
			managerList = managerService.getManagerList(null);
		}catch(Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("managerList", managerList);
		return new ModelAndView("_mypage/myInfo_GD");
	}

	@RequestMapping(value = "/_coach/loveColumn_GD.do", method = RequestMethod.GET)
	public String lovecolumn(Model model) {

		return "_coach/loveColumn_GD";

	}

	@RequestMapping(value = "/_coach/readColumn_GD.do", method = RequestMethod.GET)
	public String readlovecolumn(Model model) {

		return "_coach/readColumn_GD";

	}

	@RequestMapping(value = "/_coach/meetingTip_GD.do", method = RequestMethod.GET)
	public String tip(Model model) {

		return "_coach/meetingTip_GD";

	}

	@RequestMapping(value = "/_coach/readTip_GD.do", method = RequestMethod.GET)
	public String readtip(Model model) {

		return "_coach/readTip_GD";

	}

	@RequestMapping(value = "/_admin/admin_Payment_GD.do", method = RequestMethod.GET)
	public ModelAndView list(Model model) {
		/** 1) 필요한 변수값 생성 */
		String keyword = webHelper.getString("keyword", "");	// 검색어
		int nowPage = webHelper.getInt("page", 1);				// 페이지 번호 (기본값 1)
		int totalCount = 0;										// 전체 게시글 수
		int listCount = 10;										// 한 페이지당 표시할 목록 수
		int pageCount = 5;										// 한 그룹당 표시할 페이지 번호 수
		
	
		Payment input = new Payment();
		input.setPayername(keyword);

		
		List<Payment> output = null; 
		PageData pageData = null;		
		
		List<Manager> managerList = null;
		try {
	
			totalCount = paymentService.getPaymentCount(input);
	
			pageData = new PageData(nowPage, totalCount, listCount, pageCount);
			
			
			Payment.setOffset(pageData.getOffset());
			Payment.setListCount(pageData.getListCount());

			output = paymentService.getPaymentList(input);
			managerList = managerService.getManagerList(null);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
	
		model.addAttribute("keyword", keyword);
		model.addAttribute("output", output);
		model.addAttribute("managerList", managerList);
		model.addAttribute("pageData", pageData);
		
		String viewPath = "_admin/admin_Payment_GD";
		return new ModelAndView(viewPath);
	}
	
	@RequestMapping(value = "/_admin/admin_Payment_edit_GD.do", method = RequestMethod.POST)
	public ModelAndView adminpayedit(Model model) {
		
		
		int memlv = webHelper.getInt("memlv");
		int service = webHelper.getInt("service");
		int manager = webHelper.getInt("manager");
		String UserName = webHelper.getString("UserName");
		
		
		User input = new User();
		input.setMember_Lv(memlv);
		input.setDate_Rest(service);
		input.setManagerId(manager);
		input.setUserName(UserName);
		

		try {
			userService.editUser(input);
			}catch(Exception e) {
			return webHelper.redirect(null, "DB 오류");
		}
		
		String redirectUrl = contextPath + "/_admin/admin_Payment_GD.do";
		return webHelper.redirect(redirectUrl, "승인되었습니다.");
		}

	
	@RequestMapping(value = "/_admin/admin_QnA_GD.do", method = RequestMethod.GET)
	public String adminqna(Model model) {

		return "_admin/admin_QnA_GD";

	}

	@RequestMapping(value = "/_admin/admin_QnARead_GD.do", method = RequestMethod.GET)
	public String adminqnaread(Model model) {

		return "_admin/admin_QnARead_GD";

	}

	@RequestMapping(value = "/_admin/admin_QnAWrite_GD.do", method = RequestMethod.GET)
	public String adminqnawrite(Model model) {

		return "_admin/admin_QnAWrite_GD";

	}
	@RequestMapping(value = "/_admin/admin_QnA_Insert.do", method = RequestMethod.POST)
	public ModelAndView adminqnainsert(Model model) {
		
		
		User loginInfo = (User)webHelper.getSession("loginInfo");
		
		Integer memberid = loginInfo.getMemberId();
			
		String title = webHelper.getString("title");
		String content = webHelper.getString("content");

		
		
		Board input = new Board();
		
		input.setTitle(title);
		input.setContent(content);
		input.setCategory(4);
		input.setContentImg("dd");
		input.setMemberId(memberid);
		
		try {
			boardService.addBoard(input);
		}catch(Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		return new ModelAndView("_admin/admin_QnAWrite_GD");
	}

	@RequestMapping(value = "/_admin/admin_userEx_GD.do", method = RequestMethod.GET)
	public String adminuserex(Model model) {

		return "_admin/admin_userEx_GD";

	}

	@RequestMapping(value = "/_admin/admin_userExRead_GD.do", method = RequestMethod.GET)
	public ModelAndView adminuserexread(Model model) {

		return new ModelAndView("_admin/admin_userExRead_GD");

	}

	@RequestMapping(value = "/_admin/admin_userExWrite_GD.do", method = RequestMethod.GET)
	public String adminuserexwrite(Model model) {

		return "_admin/admin_userExWrite_GD";

	}

}
