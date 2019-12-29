package study.spring.simplespring.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import lombok.Data;
import study.spring.simplespring.helper.MailHelper;
import study.spring.simplespring.helper.PageData;
import study.spring.simplespring.helper.RegexHelper;
import study.spring.simplespring.helper.UploadItem;
import study.spring.simplespring.helper.WebHelper;
import study.spring.simplespring.model.Board;
import study.spring.simplespring.model.Manager;
import study.spring.simplespring.model.Payment;
import study.spring.simplespring.model.ReqMatch;
import study.spring.simplespring.model.SucMatch;
import study.spring.simplespring.model.User;
import study.spring.simplespring.service.BoardService;
import study.spring.simplespring.service.ManagerService;
import study.spring.simplespring.service.PaymentService;
import study.spring.simplespring.service.ReqMatchService;
import study.spring.simplespring.service.SucMatchService;
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
	
	@Autowired
	SucMatchService sucmatchService;
	
	@Autowired
	ReqMatchService reqmatchService;

	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	
	@RequestMapping(value = "/_payment/mustInput_SE.do", method = RequestMethod.GET)
	public ModelAndView mustinput(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo == null) {
			String redirectUrl = contextPath + "/_login/login_HG.do";
			return webHelper.redirect(redirectUrl, "로그인 후 이용해주세요.");
		}
		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}

		Integer memberlv = (Integer) loginInfo.getMember_Lv();

		if (memberlv != 0) {
			String redirectUrl = contextPath + "/_payment/payment_GD.do";
			return webHelper.redirect(redirectUrl, "결제페이지로 이동합니다.");
		} else if (memberlv == 0) {
			return new ModelAndView("_payment/mustInput_SE");
		}
		return new ModelAndView("_payment/mustInput_SE");
	}
	
	
	@ResponseBody		
	@RequestMapping(value = "/_Reqdate.do", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
	public String reqdate(Model model) {

		int memberid = webHelper.getInt("MemberId");
		
		User input = new User();
		User output = null;
		
		input.setMemberId(memberid);
		
		try {
			output = userService.getUserItem(input);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("output = "+ output);
		model.addAttribute("output", output);
		
		Gson gson = new Gson();
		
		return gson.toJson(output);
	}

	@ResponseBody
	@RequestMapping(value = "/_payment/mustInputok.do", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	public ModelAndView mustInputok(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}

		Integer memberid = (Integer) loginInfo.getMemberId();

		try {
			webHelper.upload();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			return webHelper.redirect(null, "업로드에 실패");

		}
		List<UploadItem> fileList = webHelper.getFileList();
		Map<String, String> paramMap = webHelper.getParamMap();

		String job = paramMap.get("job");
		String edu_lv = paramMap.get("edu_lv");
		String height = paramMap.get("height");
		String bldtype = paramMap.get("blood");
		String date_loc = paramMap.get("place");
		String personality = paramMap.get("personality");
		String sal_annual = paramMap.get("income");
		String style = paramMap.get("style");
		

		String user_img = fileList.get(0).getFilePath();

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
		input.setStyle(style);

		System.out.println(fileList.size() + "dddd");

		try {
			userService.specialEditUser(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		return new ModelAndView("_payment/payment_GD");
	}

	@RequestMapping(value = "/_payment/payment_GD.do", method = RequestMethod.GET)
	public ModelAndView payment(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}

		return new ModelAndView("_payment/payment_GD");

	}

	@RequestMapping(value = "/_payment/payok.do", method = RequestMethod.POST)
	public ModelAndView payok(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");
		Integer memberid = (Integer) loginInfo.getMemberId();
		String username = (String) loginInfo.getUserName();

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
			return webHelper.redirect(null, "DB 오류");
		}

		String redirectUrl = contextPath + "/_payment/pay_ok_GD.do";
		return webHelper.redirect(redirectUrl, "결제가 완료되었습니다.");

	}

	@RequestMapping(value = "/_payment/pay_ok_GD.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String paysuccess(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}

		return "_payment/pay_ok_GD";

	}

	@RequestMapping(value = "/_findAccount/FindId_GD.do", method = RequestMethod.GET)
	public ModelAndView findid(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}

		return new ModelAndView("_findAccount/FindId_GD");

	}

	@ResponseBody
	@RequestMapping(value = "/_findAccount/FindId_GD_ok.do", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	public String findidok(Model model) {

		String username = webHelper.getString("user_name");
		String useremail = webHelper.getString("user_email");

		User input = new User();
		input.setUserName(username);
		input.setEmail(useremail);

		User req = null;

		try {
			req = userService.selectFindaccount(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
			
		System.out.println(req);
	
		Gson gson = new Gson();
		
		Map<String,Object> result1 = new HashMap<String,Object>();
		
		if(req.getMemberId()!=0) {
			

			Random random = new Random(System.currentTimeMillis());
			
			int range = (int)Math.pow(10, 6);
			int trim = (int)Math.pow(10, 6-1);
			int result = random.nextInt(range)+trim;
			
			result1.put("result", result);
			result1.put("req", req);
			
			if(result>range) {
				result = result - trim;
			}
			
			String subject = "(주) 연-결 인증번호가 도착했습니다.";
			String content = username + "님의 인증번호는 " + result +" 입니다. 사이트에서 인증번호를 입력해주세요";
		
			System.out.println(result1);
			/** 메일 발송 처리 */
			try {
				// sendMail() 메서드 선언시 throws를 정의했기 때문에 예외처리가 요구된다.
				mailHelper.sendMail(useremail, subject, content);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		return gson.toJson(result1);	
	}
	
	@RequestMapping(value = "/_findAccount/FindPw_GD.do", method = RequestMethod.GET)
	public ModelAndView findpw(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}

		return new ModelAndView("_findAccount/FindPw_GD");

	}

	
	@ResponseBody
	@RequestMapping(value = "/_findAccount/FindPw_GD_ok.do", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	public String findpwok(Model model) {

		String username = webHelper.getString("user_name");
		String userid = webHelper.getString("user_id");
		String useremail = webHelper.getString("user_email");

		User input = new User();
		input.setUserName(username);
		input.setUserId(userid);
		input.setEmail(useremail);

		User req = null;

		try {
			req = userService.selectFindPassword(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
			
		System.out.println(req);
	
		Gson gson = new Gson();
		
		Map<String,Object> result1 = new HashMap<String,Object>();
		
		if(req.getMemberId()!=0) {
			

			Random random = new Random(System.currentTimeMillis());
			
			int range = (int)Math.pow(10, 6);
			int trim = (int)Math.pow(10, 6-1);
			int result = random.nextInt(range)+trim;
			
			result1.put("result", result);
			result1.put("req", req);
			
			if(result>range) {
				result = result - trim;
			}
			
			String subject = "(주) 연-결 인증번호가 도착했습니다.";
			String content = username + "님의 인증번호는 " + result +" 입니다. 사이트에서 인증번호를 입력해주세요";
		
			System.out.println(result1);
			
		}
		return gson.toJson(result1);	
	}
	
	@RequestMapping(value = "/_findAccount/FindPw_GD_Success.do", method = RequestMethod.POST)
	public ModelAndView findpwsuccess(Model model) {
		
		String password = webHelper.getString("new_pwd");
		String checkpwd = webHelper.getString("check_pwd");
		String userid = webHelper.getString("userid");
		User input = new User();
		
		input.setUserId(userid);
		input.setUserPw(password);
		
		try {
			userService.editUserPw(input);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return webHelper.redirect(contextPath + "/_login/login_HG.do", "정상적으로 변경되었습니다.");

	}

	@RequestMapping(value = "/_findAccount/CheckId_GD.do", method = RequestMethod.POST)
	public ModelAndView checkid(Model model) {

		
		String name = webHelper.getString("user_name");
		
		User input = new User();
		input.setUserName(name);
		
		User output = null;
		try {
			output = userService.getUserItemFindId(input);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		model.addAttribute("output",output);

		return new ModelAndView("_findAccount/CheckId_GD");

	}

	@RequestMapping(value = "/_findAccount/CheckPw_GD.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String checkpw(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}

		return "_findAccount/CheckPw_GD";

	}

	@RequestMapping(value = "/_info/map_GD.do", method = RequestMethod.GET)
	public String Map(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}

		return "_info/map_GD";

	}

	@RequestMapping(value = "/_mypage/myInfo_GD.do", method = RequestMethod.GET)
	public ModelAndView myinfo(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");
		List<Manager> managerList = null;
		

		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}

		if (loginInfo == null) {
			String redirectUrl = contextPath + "/_login/login_HG.do";
			return webHelper.redirect(redirectUrl, "로그인후 이용 하실수 있습니다.");
		} 
		
			String name = (String) loginInfo.getUserName();
			Integer memberid = (Integer) loginInfo.getMemberId();
			Integer date_rest = (Integer) loginInfo.getDate_Rest();
			Integer memberlv = (Integer) loginInfo.getMember_Lv();
			Integer managerid = (Integer) loginInfo.getManagerId();

			model.addAttribute("username", name);
			model.addAttribute("date_rest", date_rest);
			model.addAttribute("memberlv", memberlv);
			model.addAttribute("managerid", managerid);
			
			ReqMatch reqmatch = new ReqMatch();
			SucMatch sucmatch = new SucMatch();
			
			
			SucMatch suc1 = null;
			List<SucMatch> suc0 = null;
			List<SucMatch> sucuser = null;
			ReqMatch requser = null;	
	
		try {
		
			managerList = managerService.getManagerList(null);
			
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

			reqmatch.setMemberId(memberid);
			sucmatch.setMemberId(memberid);
			
			try {
				suc1 = sucmatchService.getSucMatchItemStatus(sucmatch);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				requser = reqmatchService.getReqMatchItem(reqmatch);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				sucuser = sucmatchService.getSucMatchList(sucmatch);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
				try {
					suc0 = sucmatchService.getSucMatchItemStatus0(sucmatch);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
				model.addAttribute("requser", requser);
				model.addAttribute("sucuser",sucuser);
				model.addAttribute("suc1", suc1);
				model.addAttribute("suc0", suc0);
			
				
				System.out.println("suc1 = " + suc1);
				System.out.println("req = " + requser);
				System.out.println("suc = "+sucuser);
				System.out.println("suc0 = "+suc0);
		
				model.addAttribute("managerList", managerList);
				
		return new ModelAndView("_mypage/myInfo_GD");
	}
	
	@RequestMapping(value = "/_mypage/DateConfirm.do", method = RequestMethod.GET)
	public ModelAndView dateconfirm(Model model) {
		
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		SucMatch sucmatch = new SucMatch();
		
		
		int Date_Rest = loginInfo.getDate_Rest();

		if(Date_Rest <=  0) {
			return webHelper.redirect(contextPath + "/_mypage/myInfo_GD.do", "잔여 횟수가 부족합니다.");
			
		}
		
		User user = new User();
		int memberid = loginInfo.getMemberId();
		
		int sucmatchid = webHelper.getInt("SucMatchId");
		
		sucmatch.setSucMatchId(sucmatchid);
		sucmatch.setMemberId(memberid);
		user.setMemberId(memberid);
				
		try {
			sucmatchService.editSucMatch(sucmatch);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			userService.editUserRest(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return webHelper.redirect(contextPath + "/_mypage/myInfo_GD.do", "매칭이 성사 되었습니다.");

	}
	
	@RequestMapping(value = "/_mypage/DateConfirm1.do", method = RequestMethod.GET)
	public ModelAndView datecancel(Model model) {
		
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		SucMatch sucmatch = new SucMatch();
		

		int memberid = loginInfo.getMemberId();
		
		int sucmatchid = webHelper.getInt("SucMatchId");
		
		User user = new User();
		int pmemberid = webHelper.getInt("MemberId");

		sucmatch.setSucMatchId(sucmatchid);
		user.setMemberId(pmemberid);
		sucmatch.setMemberId(memberid);
				
		try {
			sucmatchService.editSucMatch1(sucmatch);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		try {
			userService.editUserRestUp(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		return webHelper.redirect(contextPath + "/_mypage/myInfo_GD.do", "데이트 신청을 거절 하셨습니다.");

	}
	
	@RequestMapping(value = "/_mypage/DateConfirm2.do", method = RequestMethod.GET)
	public ModelAndView datecancel1(Model model) {
		
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		SucMatch sucmatch = new SucMatch();
		
		int Date_Rest = loginInfo.getDate_Rest();
		loginInfo.setDate_Rest(Date_Rest + 1);
		
		User user = new User();
		
		int memberid = loginInfo.getMemberId();
		
		int sucmatchid = webHelper.getInt("SucMatchId");
		int pmemberid = webHelper.getInt("MemberId");
		
		user.setMemberId(pmemberid);
		sucmatch.setSucMatchId(sucmatchid);
		sucmatch.setMemberId(memberid);
		
		SucMatch suc = null;
				
		try {
			sucmatchService.editSucMatch1(sucmatch);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			userService.editUserRestUp(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		return webHelper.redirect(contextPath + "/_mypage/myInfo_GD.do", "데이트 일정이 취소 되셨습니다.");

	}

	@RequestMapping(value = "/_coach/loveColumn_GD.do", method = RequestMethod.GET)
	public ModelAndView lovecolumn(Model model) {

		Board board = new Board();

		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			Integer isadmin = loginInfo.getIsadmin();

			model.addAttribute("isadmin", isadmin);
			model.addAttribute("login", login);
		}

		Board input = new Board();

		int nowPage = webHelper.getInt("page", 1); // 페이지 번호 (기본값 1)
		int totalCount = 0;
		int listCount = 4; // 한 페이지당 표시할 목록 수
		int pageCount = 5;

		PageData pageData = null;

		List<Board> output = null;

		try {
			totalCount = boardService.getBoardCountColumn(input);
			pageData = new PageData(nowPage, totalCount, listCount, pageCount);

			Board.setOffset(pageData.getOffset());
			Board.setListCount(pageData.getListCount());
			output = boardService.getBoardListColumn(input);
			System.out.println(output + "안햇어요");
		} catch (Exception e) {
			System.out.println(output);
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		System.out.println(output + "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");

		model.addAttribute("output", output);
		model.addAttribute("pageData", pageData);
		return new ModelAndView("_coach/loveColumn_GD");

	}

	@RequestMapping(value = "/_coach/readColumn_GD.do", method = RequestMethod.GET)
	public ModelAndView readlovecolumn(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			Integer isadmin = loginInfo.getIsadmin();
			model.addAttribute("isadmin", isadmin);
			model.addAttribute("login", login);
		}

		/** 1) 필요한 변수값 생성 */
		// 조회할 대상에 대한 PK값
		int BoardId = webHelper.getInt("BoardId");

		// 이 값이 존재하지 않는다면 데이터 조회가 불가능하므로 반드시 필수값으로 처리해야 한다.
		if (BoardId == 0) {
			return webHelper.redirect(null, "글번호가 없습니다.");
		}

		Board input = new Board();
		User user = new User();
		input.setBoardId(BoardId);

		Board output = null;
		User out = null;
		try {
			output = boardService.getBoardItemColumn(input);
			user = userService.getUserItem(out);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("user", user);
		model.addAttribute("output", output);

		return new ModelAndView("_coach/readColumn_GD");


	}
	
	@RequestMapping(value = "/_coach/deleteColumn.do", method = RequestMethod.GET)
	public ModelAndView deleteColumn(Model model) {

		/** 1) 필요한 변수값 생성 */
		// 조회할 대상에 대한 PK값
		int BoardId = webHelper.getInt("BoardId");

		// 이 값이 존재하지 않는다면 데이터 조회가 불가능하므로 반드시 필수값으로 처리해야 한다.
		if (BoardId == 0) {
			return webHelper.redirect(null, "글번호가 없습니다.");
		}

		Board input = new Board();

		input.setBoardId(BoardId);

		try {
			
			boardService.deleteColumn(input);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return webHelper.redirect(contextPath + "/_coach/loveColumn_GD.do", "삭제되었습니다.");

	}
	
	@RequestMapping(value = "/_coach/ColumnWrite.do", method = RequestMethod.GET)
	public ModelAndView columnwrite(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}

		return new ModelAndView("_coach/ColumnWrite");

	}
	
	@ResponseBody
	@RequestMapping(value = "/_coach/ColumnWriteOk.do", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	public ModelAndView columnok(Model model) {

		User id = (User) webHelper.getSession("loginInfo");
		Integer memberid = id.getMemberId();

		try {
			webHelper.upload();
		} catch (Exception e) {
			e.printStackTrace();
		}

		List<UploadItem> fileList = webHelper.getFileList();
		Map<String, String> paramMap = webHelper.getParamMap();

		String title = paramMap.get("title");
		String content = paramMap.get("content");
		String contentimg = fileList.get(0).getFilePath();

		Board input = new Board();
		input.setTitle(title);
		input.setContent(content);
		input.setContentImg(contentimg);
		input.setMemberId(memberid);

		try {
			boardService.addBoardColumn(input);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		String redirectUrl = contextPath + "/_coach/readColumn_GD.do?BoardId=" + input.getBoardId();
		return webHelper.redirect(redirectUrl, "게시물이 등록되었습니다.");

	}

	@RequestMapping(value = "/_coach/meetingTip_GD.do", method = RequestMethod.GET)
	public ModelAndView tip(Model model) {

		Board board = new Board();

		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			Integer isadmin = loginInfo.getIsadmin();

			model.addAttribute("isadmin", isadmin);
			model.addAttribute("login", login);
		}

		Board input = new Board();

		int nowPage = webHelper.getInt("page", 1); // 페이지 번호 (기본값 1)
		int totalCount = 0;
		int listCount = 4; // 한 페이지당 표시할 목록 수
		int pageCount = 5;

		PageData pageData = null;

		List<Board> output = null;

		try {
			totalCount = boardService.getBoardCountTip(input);
			pageData = new PageData(nowPage, totalCount, listCount, pageCount);

			Board.setOffset(pageData.getOffset());
			Board.setListCount(pageData.getListCount());
			output = boardService.getBoardListTip(input);
			System.out.println(output + "안햇어요");
		} catch (Exception e) {
			System.out.println(output);
			return webHelper.redirect(null, e.getLocalizedMessage());

		}

		System.out.println(output + "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");

		model.addAttribute("output", output);
		model.addAttribute("pageData", pageData);
		return new ModelAndView("_coach/meetingTip_GD");

	}

	@RequestMapping(value = "/_coach/TipWrite.do", method = RequestMethod.GET)
	public ModelAndView tipwrite(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}

		return new ModelAndView("_coach/TipWrite");

	}

	@ResponseBody
	@RequestMapping(value = "/_coach/TipWriteok.do", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	public ModelAndView tipwriteok(Model model) {

		User id = (User) webHelper.getSession("loginInfo");
		Integer memberid = id.getMemberId();

		try {
			webHelper.upload();
		} catch (Exception e) {
			e.printStackTrace();
		}

		List<UploadItem> fileList = webHelper.getFileList();
		Map<String, String> paramMap = webHelper.getParamMap();

		String title = paramMap.get("title");
		String content = paramMap.get("content");
		String contentimg = fileList.get(0).getFilePath();

		Board input = new Board();
		input.setTitle(title);
		input.setContent(content);
		input.setContentImg(contentimg);
		input.setMemberId(memberid);

		try {
			boardService.addBoardTip(input);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String redirectUrl = contextPath + "/_coach/readTip_GD.do?BoardId=" + input.getBoardId();
		return webHelper.redirect(redirectUrl, "게시물이 등록되었습니다.");

	}

	@RequestMapping(value = "/_coach/readTip_GD.do", method = RequestMethod.GET)
	public ModelAndView readtip(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			Integer isadmin = loginInfo.getIsadmin();
			model.addAttribute("isadmin", isadmin);
			model.addAttribute("login", login);
		}

		/** 1) 필요한 변수값 생성 */
		// 조회할 대상에 대한 PK값
		int BoardId = webHelper.getInt("BoardId");
		// 이 값이 존재하지 않는다면 데이터 조회가 불가능하므로 반드시 필수값으로 처리해야 한다.
		if (BoardId == 0) {
			return webHelper.redirect(null, "글번호가 없습니다.");
		}
		Board input = new Board();
		input.setBoardId(BoardId);
		Board output = null;
		try {
			output = boardService.getBoardItemTip(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("output", output);

		return new ModelAndView("_coach/readTip_GD");

	}

	@RequestMapping(value = "/_coach/deleteTip.do", method = RequestMethod.GET)
	public ModelAndView deleteTip(Model model) {

		/** 1) 필요한 변수값 생성 */
		// 조회할 대상에 대한 PK값
		int BoardId = webHelper.getInt("BoardId");
		// 이 값이 존재하지 않는다면 데이터 조회가 불가능하므로 반드시 필수값으로 처리해야 한다.
		if (BoardId == 0) {
			return webHelper.redirect(null, "글번호가 없습니다.");
		}
		Board input = new Board();
		input.setBoardId(BoardId);
		try {
		
			boardService.deleteTip(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return webHelper.redirect(contextPath + "/_coach/meetingTip_GD.do", "삭제되었습니다.");

	}
	@RequestMapping(value = "/_coach/editTip.do", method = RequestMethod.GET)
	public ModelAndView editTip(Model model) {

		/** 1) 필요한 변수값 생성 */
		// 조회할 대상에 대한 PK값
		int BoardId = webHelper.getInt("BoardId");

		// 이 값이 존재하지 않는다면 데이터 조회가 불가능하므로 반드시 필수값으로 처리해야 한다.
		if (BoardId == 0) {
			return webHelper.redirect(null, "글번호가 없습니다.");
		}
		Board input = new Board();

		input.setBoardId(BoardId);
		
		Board output = null;
		try {
			output = boardService.getBoardItemTip(input);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		model.addAttribute("output", output);

		return new ModelAndView("_coach/editTip");

	}
	
	@ResponseBody
	@RequestMapping(value = "/_coach/editTipok.do", method = RequestMethod.POST ,produces = "text/plain;charset=UTF-8")
	public ModelAndView editTipOk(Model model) {

		User id = (User) webHelper.getSession("loginInfo");
		Integer memberid = id.getMemberId();
		 
		String CreationDate = webHelper.getString("CreationDate");
		
		try {
			webHelper.upload();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		

		List<UploadItem> fileList = webHelper.getFileList();
		Map<String, String> paramMap = webHelper.getParamMap();

		String title = paramMap.get("title");
		String content = paramMap.get("content");
		String contentimg = fileList.get(0).getFilePath();
		String boardid = (String)paramMap.get("boardid");
		
		if(boardid==null) {
			return webHelper.redirect(null, "내용이 없아");
		}
		System.out.println(boardid);
		
		Board input = new Board();
		input.setTitle(title);
		input.setContent(content);
		input.setContentImg(contentimg);
		input.setMemberId(memberid);
		input.setBoardId(Integer.parseInt(boardid));
		input.setCreationDate(CreationDate);

		try {
			boardService.editTip(input);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return webHelper.redirect(null, "DB 오류");
		}

		String redirectUrl = contextPath + "/_coach/readTip_GD.do";
		return webHelper.redirect(redirectUrl, "수정되었습니다.");
	}
	
	@RequestMapping(value = "/_coach/editColumn.do", method = RequestMethod.GET)
	public ModelAndView editColumn(Model model) {

		/** 1) 필요한 변수값 생성 */
		// 조회할 대상에 대한 PK값
		int BoardId = webHelper.getInt("BoardId");

		// 이 값이 존재하지 않는다면 데이터 조회가 불가능하므로 반드시 필수값으로 처리해야 한다.
		if (BoardId == 0) {
			return webHelper.redirect(null, "글번호가 없습니다.");
		}
		Board input = new Board();

		input.setBoardId(BoardId);
		
		Board output = null;
		try {
			output = boardService.getBoardItemColumn(input);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		model.addAttribute("output", output);

		return new ModelAndView("_coach/editColumn");

	}
	
	@ResponseBody
	@RequestMapping(value = "/_coach/editColumnok.do", method = RequestMethod.POST ,produces = "text/plain;charset=UTF-8")
	public ModelAndView editColumnok(Model model) {

		User id = (User) webHelper.getSession("loginInfo");
		Integer memberid = id.getMemberId();
		 
		String CreationDate = webHelper.getString("CreationDate");
		
		try {
			webHelper.upload();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		

		List<UploadItem> fileList = webHelper.getFileList();
		Map<String, String> paramMap = webHelper.getParamMap();

		String title = paramMap.get("title");
		String content = paramMap.get("content");
		String contentimg = fileList.get(0).getFilePath();
		String boardid = (String)paramMap.get("boardid");
		
		if(boardid==null) {
			return webHelper.redirect(null, "내용이 없아");
		}
		System.out.println(boardid);
		
		Board input = new Board();
		input.setTitle(title);
		input.setContent(content);
		input.setContentImg(contentimg);
		input.setMemberId(memberid);
		input.setBoardId(Integer.parseInt(boardid));
		input.setCreationDate(CreationDate);
		
		

		try {
			boardService.editColumn(input);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return webHelper.redirect(null, "DB 오류");
		}

		String redirectUrl = contextPath + "/_coach/readColumn_GD.do";
		return webHelper.redirect(redirectUrl, "수정되었습니다.");
	}
	@RequestMapping(value = "/_admin/admin_Payment_GD.do", method = RequestMethod.GET)
	public ModelAndView adminPaymentList(Model model) {
		/** 1) 필요한 변수값 생성 */
		String keyword = webHelper.getString("keyword", ""); // 검색어
		int nowPage = webHelper.getInt("page", 1); // 페이지 번호 (기본값 1)
		int totalCount = 0; // 전체 게시글 수
		int listCount = 10; // 한 페이지당 표시할 목록 수
		int pageCount = 5; // 한 그룹당 표시할 페이지 번호 수

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
		int	memberid = webHelper.getInt("MemberId");

		User input = new User();
		input.setMember_Lv(memlv);
		input.setDate_Rest(service);
		input.setManagerId(manager);
		input.setMemberId(memberid);

		try {
			
			paymentService.clearManager(input);
			userService.managerEditUser(input);
			
		} catch (Exception e) {

			return webHelper.redirect(null, "DB 오류");
		}

		String redirectUrl = contextPath + "/_admin/admin_Payment_GD.do";
		return webHelper.redirect(redirectUrl, "승인되었습니다.");
	}

	@RequestMapping(value = "/_admin/admin_QnA_GD.do", method = RequestMethod.GET)
	public ModelAndView adminqna(Model model) {
		
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		/** 1) 필요한 변수값 생성 */
		String keyword = webHelper.getString("keyword", ""); // 검색어
		int nowPage = webHelper.getInt("page", 1); // 페이지 번호 (기본값 1)
		int totalCount = 0; // 전체 게시글 수
		int listCount = 10; // 한 페이지당 표시할 목록 수
		int pageCount = 5; // 한 그룹당 표시할 페이지 번호 수

		String UserName = loginInfo.getUserName();
		int MemberId = loginInfo.getMemberId();
		int BoardId = webHelper.getInt("BoardId");

		/** 2) 데이터 조회하기 */
		// 조회에 필요한 조건값(검색어)를 Beans에 담는다.
		Board input = new Board();
		input.setTitle(keyword);
		input.setUserName(UserName);
		input.setMemberId(MemberId);
		input.setBoardId(BoardId);

		List<Board> output = null; // 조회결과가 저장될 객체
		PageData pageData = null; // 페이지 번호를 계산한 결과가 저장될 객체

		try {
			// 전체 게시글 수 조회
			totalCount = boardService.getBoardCount(input);
			// 페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
			pageData = new PageData(nowPage, totalCount, listCount, pageCount);

			// SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
			Board.setOffset(pageData.getOffset());
			Board.setListCount(pageData.getListCount());

			// 데이터 조회하기
			output = boardService.getBoardListadminQnA(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		/** 3) View 처리 */
		model.addAttribute("keyword", keyword);
		model.addAttribute("output", output);
		model.addAttribute("pageData", pageData);
		String viewPath = "_admin/admin_QnA_GD";
		return new ModelAndView(viewPath);

	}

	@RequestMapping(value = "/_admin/admin_QnARead_GD.do", method = RequestMethod.GET)
	public ModelAndView adminqnaread(Model model) {
		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {

			String login = loginInfo.getUserName();

			model.addAttribute("login", login);
		}

		int BoardId = webHelper.getInt("BoardId");
		String Title = webHelper.getString("Title");
		int viewcount = webHelper.getInt("viewcount");

		if (BoardId == 0) {
			return webHelper.redirect(null, "게시글이 없습니다.");
		}

		Board input = new Board();
		input.setBoardId(BoardId);
		input.setTitle(Title);

		Board input1 = new Board();
		input1.setViewcount(viewcount);
		input1.setBoardId(BoardId);
		
		
		int output1 = 0;
		Board output = null;
		Board prevBoard = null;
		Board nextBoard = null;
		
		
		try {
			// 데이터 조회
			output1 = boardService.editviewcount(input1);
			output = boardService.getBoardItem(input);
			prevBoard = boardService.getNextDocument(input);
			nextBoard = boardService.getPrevDocument(input);
			
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("nextBoard",nextBoard);
		model.addAttribute("prevBoard",prevBoard);
		model.addAttribute("output1",output1);
		model.addAttribute("output", output);
		return new ModelAndView("_admin/admin_QnARead_GD");

	}
	
	@RequestMapping(value = "/_admin/admin_QnA_GDdeleteOk.do", method = RequestMethod.GET)
	public ModelAndView delete_ok(Model model) {

		int BoardId = webHelper.getInt("BoardId");

		if (BoardId == 0) {
			return webHelper.redirect(null, "공지사항 게시글이 없습니다.");
		}

		Board input = new Board();
		input.setBoardId(BoardId);

		try {
			// 데이터 삭제
			boardService.deleteBoardNotice(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		return webHelper.redirect(contextPath + "/_admin/admin_QnA_GD.do", "삭제되었습니다.");
	}
	
	@RequestMapping(value = "/_admin/admin_QnAWrite_GD.do", method = RequestMethod.GET)
	public String adminqnawrite(Model model) {

		return "_admin/admin_QnAWrite_GD";

	}

	@RequestMapping(value = "/_admin/admin_QnAWriteOk.do", method = RequestMethod.POST)
	public ModelAndView adminqnainsert(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		int MemberId = loginInfo.getMemberId();
		String Title = webHelper.getString("Title");
		String Content = webHelper.getString("Content");
		int Category = webHelper.getInt("Category");
		String CreationDate = webHelper.getString("CreationDate");

		Board input = new Board();
		input.setContent(Content);
		input.setTitle(Title);
		input.setMemberId(MemberId);
		input.setCategory(Category);
		input.setCreationDate(CreationDate);

		try {
			// 데이터 저장
			// --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
			boardService.addBoardadminQnA(input);

		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		String redirectUrl = contextPath + "/_admin/admin_QnARead_GD.do?BoardId=" + input.getBoardId();
		return webHelper.redirect(redirectUrl, "QnA 게시판에 등록되었습니다.");
	}

	@RequestMapping(value = "/_admin/admin_userEx_GD.do", method = RequestMethod.GET)
	public ModelAndView adminuserex(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");
		/** 1) 필요한 변수값 생성 */
		String keyword = webHelper.getString("keyword", ""); // 검색어
		int nowPage = webHelper.getInt("page", 1); // 페이지 번호 (기본값 1)
		int totalCount = 0; // 전체 게시글 수
		int listCount = 10; // 한 페이지당 표시할 목록 수
		int pageCount = 5; // 한 그룹당 표시할 페이지 번호 수

		String UserName = loginInfo.getUserName();
		int MemberId = loginInfo.getMemberId();
		int BoardId = webHelper.getInt("BoardId");

		/** 2) 데이터 조회하기 */
		// 조회에 필요한 조건값(검색어)를 Beans에 담는다.
		Board input = new Board();
		input.setTitle(keyword);
		input.setUserName(UserName);
		input.setMemberId(MemberId);
		input.setBoardId(BoardId);

		List<Board> output = null; // 조회결과가 저장될 객체
		PageData pageData = null; // 페이지 번호를 계산한 결과가 저장될 객체

		try {
			// 전체 게시글 수 조회
			totalCount = boardService.getBoardCount(input);
			// 페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
			pageData = new PageData(nowPage, totalCount, listCount, pageCount);

			// SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
			Board.setOffset(pageData.getOffset());
			Board.setListCount(pageData.getListCount());

			// 데이터 조회하기
			output = boardService.getBoardListReview(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		/** 3) View 처리 */
		model.addAttribute("keyword", keyword);
		model.addAttribute("output", output);
		model.addAttribute("pageData", pageData);
		String viewPath = "_admin/admin_userEx_GD";
		return new ModelAndView(viewPath);

	}

	@RequestMapping(value = "/_admin/admin_userExRead_GD.do", method = RequestMethod.GET)
	public ModelAndView adminuserexread(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {

			String login = loginInfo.getUserName();

			model.addAttribute("login", login);
		}

		int BoardId = webHelper.getInt("BoardId");
		String Title = webHelper.getString("Title");
		int viewcount = webHelper.getInt("viewcount");

		if (BoardId == 0) {
			return webHelper.redirect(null, "게시글이 없습니다.");
		}

		Board input = new Board();
		input.setBoardId(BoardId);
		input.setTitle(Title);

		Board input1 = new Board();
		input1.setViewcount(viewcount);
		input1.setBoardId(BoardId);
		
		
		int output1 = 0;
		Board output = null;
		Board prevBoard = null;
		Board nextBoard = null;
		
		
		try {
			// 데이터 조회
			output1 = boardService.editviewcount(input1);
			output = boardService.getBoardItem(input);
			prevBoard = boardService.getNextDocument(input);
			nextBoard = boardService.getPrevDocument(input);
			
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("nextBoard",nextBoard);
		model.addAttribute("prevBoard",prevBoard);
		model.addAttribute("output1",output1);
		model.addAttribute("output", output);
		return new ModelAndView("_admin/admin_userExRead_GD");
		
	}
	
	@RequestMapping(value = "/_admin/admin_userExdeleteOk_GD.do", method = RequestMethod.GET)
	public ModelAndView userExdelete_ok(Model model) {

		int BoardId = webHelper.getInt("BoardId");

		if (BoardId == 0) {
			return webHelper.redirect(null, "공지사항 게시글이 없습니다.");
		}

		Board input = new Board();
		input.setBoardId(BoardId);

		try {
			// 데이터 삭제
			boardService.deleteBoardNotice(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		return webHelper.redirect(contextPath + "/_admin/admin_userEx_GD.do", "삭제되었습니다.");
	}
	
	@RequestMapping(value = "/_admin/admin_userExWrite_GD.do", method = RequestMethod.GET)
	public String adminuserexwrite(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}

		return "_admin/admin_userExWrite_GD";

	}
	
	@RequestMapping(value = "/_admin/admin_userExWriteOk_GD.do", method = RequestMethod.POST)
	public ModelAndView adminqnainsertok(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");

		int MemberId = loginInfo.getMemberId();
		String Title = webHelper.getString("Title");
		String Content = webHelper.getString("Content");
		int Category = webHelper.getInt("Category");
		String CreationDate = webHelper.getString("CreationDate");

		Board input = new Board();
		input.setContent(Content);
		input.setTitle(Title);
		input.setMemberId(MemberId);
		input.setCategory(Category);
		input.setCreationDate(CreationDate);

		try {
			// 데이터 저장
			// --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
			boardService.addBoardadminReview(input);

		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		String redirectUrl = contextPath + "/_admin/admin_userExRead_GD.do?BoardId=" + input.getBoardId();
		return webHelper.redirect(redirectUrl, "만남후기 게시판에 등록되었습니다.");
	}


}
