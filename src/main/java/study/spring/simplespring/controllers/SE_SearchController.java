package study.spring.simplespring.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import study.spring.simplespring.helper.WebHelper;
import study.spring.simplespring.model.ReqMatch;
import study.spring.simplespring.model.User;
import study.spring.simplespring.service.ReqMatchService;
import study.spring.simplespring.service.UserService;

@Controller
public class SE_SearchController {
	
	 @Autowired
	 WebHelper webHelper;
	 
	 @Autowired
	 ReqMatchService reqMatchService;
	 
	 @Autowired UserService userService;
	 
	 @Value("#{servletContext.contextPath}")
		String contextPath;
	 
	@RequestMapping(value = "/_mypage/search_SE.do", method = RequestMethod.GET)
	public ModelAndView view(Model model) {
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		if (loginInfo != null) {
			String login = loginInfo.getUserName();
			model.addAttribute("login", login);
		}
		
		String start = webHelper.getString("start");
		// String UserName = webHelper.getString("UserName");
		// int Gender = webHelper.getInt("Gender");
		// String BirthDate = webHelper.getString("BirthDate");
		// String Job = webHelper.getString("Job");
		
		 int isSpUser = loginInfo.getIsSpUser(); 
	      int MemberId = loginInfo.getMemberId();

		
       /** 데이터 조회하기 */
       // 데이터 조회에 필요한 조건값을 Beans에 저장하기
       ReqMatch input = new ReqMatch();
       input.setStart(start);
       input.setMemberId(MemberId);

       
       User input1 = new User();
       // input1.setUserName(UserName);
       // input1.setGender(Gender);
       // input1.setBirthDate(BirthDate);
       // input1.setJob(Job);
      
       // 조회결과를 저장할 객체 선언
       List<ReqMatch> output = null;
       List<User> output1 = null;
       
       try {
           // 데이터 조회
           output = reqMatchService.getReqMatchList(input);
           output1 = userService.getUserList(input1);
       } catch (Exception e) {
           return webHelper.redirect(null, e.getLocalizedMessage());
       }
       
       Gson gson = new Gson();
       String jsonList = gson.toJson(output);
       
       ReqMatch output2 = null;

       
       if (isSpUser == 1) {
           try { 
              // 데이터 조회
              output2 = reqMatchService.getReqMatchItem(input);
              
           } catch (Exception e) {
              return webHelper.redirect(null, e.getLocalizedMessage());
           }
           
           String redirectUrl = contextPath + "/_mypage/searchview_SE.do?Choose_Date=" + output2.getStart();
           return webHelper.redirect(redirectUrl," 선택한 날짜가 있네요! 확인해보세요! ");
        }

       
       /** 3) View 처리 */
       model.addAttribute("output", output);
       model.addAttribute("output1", output1);
       model.addAttribute("jsonList", jsonList);
       
       return new ModelAndView("_mypage/search_SE");
	} 
	@RequestMapping(value = "/_mypage/searchDateOpen_SE.do", method = RequestMethod.GET)
	public ModelAndView dateOpen(Model model) {
		
		
		  
		 return new ModelAndView("_mypage/searchDateOpen_SE");
	} 
	@RequestMapping(value = "/_mypage/searchDateRequest_SE.do", method = RequestMethod.GET)
	public ModelAndView dateReq(Model model) {
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		 loginInfo.setIsSpUser(1);
	      webHelper.setSession("loginInfo", loginInfo);


		if (loginInfo != null) {

			String login = loginInfo.getUserName();

			model.addAttribute("login", login);
		}
		
		int MemberId = loginInfo.getMemberId();
		String start = webHelper.getString("start");
		String Select_Date = webHelper.getString("Select_Date");
		 int isSpUser = loginInfo.getIsSpUser();

		 User input1 = new User();
	      input1.setIsSpUser(isSpUser);
	      input1.setMemberId(MemberId);

		 
		ReqMatch input = new ReqMatch();
		input.setMemberId(MemberId);
		input.setStart(start);
		input.setSelect_Date(Select_Date);
	
		try {
			
			reqMatchService.addReqMatch(input);
			userService.editreqMatch_User(input1);

		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		String redirectUrl = contextPath + "/_mypage/searchview_SE.do?start=" + input.getStart();
	      return webHelper.redirect(redirectUrl, input.getStart()+ " 선택 하셨습니다. ");
	   }
	
	@RequestMapping(value = "/_mypage/searchview_SE.do", method = RequestMethod.GET)
	   public ModelAndView reqConfirm(Model model) {
	      User loginInfo = (User) webHelper.getSession("loginInfo");

	      if (loginInfo != null) {

	         String login = loginInfo.getUserName();
	         
	         model.addAttribute("login", login);
	      }
	      
	      String start = webHelper.getString("start");
	      int MemberId = loginInfo.getMemberId();
	      
	      ReqMatch input = new ReqMatch();
	      input.setStart(start);
	      input.setMemberId(MemberId);
	      
	      List<ReqMatch> output = null;
	       
	       try {
	           // 데이터 조회
	           output = reqMatchService.getReqMatchList(input);
	       } catch (Exception e) {
	           return webHelper.redirect(null, e.getLocalizedMessage());
	       }
	       
	       Gson gson = new Gson();
	       String jsonList = gson.toJson(output);
	       
	       /** 3) View 처리 */
	       model.addAttribute("output", output);
	       model.addAttribute("jsonList", jsonList);
	      return new ModelAndView("_mypage/searchview_SE");
	   }
}
