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

import study.spring.simplespring.helper.PageData;
import study.spring.simplespring.helper.RegexHelper;
import study.spring.simplespring.helper.RetrofitHelper;
import study.spring.simplespring.helper.WebHelper;
import study.spring.simplespring.model.Board;
import study.spring.simplespring.service.BoardService;
import study.spring.simplespring.model.User;
import study.spring.simplespring.service.UserService;

@Controller
public class YB_Controller {

	/** 통신처리에 필요한 객체 주입 받기 */
	@Autowired 
	RetrofitHelper retrofitHelper;

	@Autowired 
	WebHelper webHelper;
	
	@Autowired 
	RegexHelper regexHelper;
	
	@Autowired 
	UserService userService;
	
	@Autowired
	BoardService boardService;	
	
    /** "/프로젝트이름" 에 해당하는 ContextPath 변수 주입 */
    @Value("#{servletContext.contextPath}")
    String contextPath;
	
	/**----------------------- 연-결 소개 Controller 시작 ------------------------------*/
	@RequestMapping(value = "/_info/IntroWebsite_YB.do", method = RequestMethod.GET)
	public String IntroWebsite(Model model) {
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		if (loginInfo != null) {
			
			String login = loginInfo.getUserName();
			
			model.addAttribute("login", login);
		}
		

		return "_info/IntroWebsite_YB";
	}
	
	@RequestMapping(value = "/_info/Greetings_YB.do", method = RequestMethod.GET)
	public String Greetings(Model model) {
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		if (loginInfo != null) {
			
			String login = loginInfo.getUserName();
			
			model.addAttribute("login", login);
		}
		return "_info/Greetings_YB";
	}
	
	/**----------------------- 연-결 소개 Controller 끝 --------------------------------*/
	
	
	
	/**----------------------- 서비스 안내 Controller 시작  ------------------------------*/
	@RequestMapping(value = "/_service/MembershipRegisGuide_YB.do", method = RequestMethod.GET)
	public String MembershipRegisGuide(Model model) {
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		if (loginInfo != null) {
			
			String login = loginInfo.getUserName();
			
			model.addAttribute("login", login);
		}		

		return "_service/MembershipRegisGuide_YB";
	}
	
	@RequestMapping(value = "/_service/ServiceProcedures_YB.do", method = RequestMethod.GET)
	public String ServiceProcedures(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		if (loginInfo != null) {
			
			String login = loginInfo.getUserName();
			
			model.addAttribute("login", login);
		}		
		
		return "_service/ServiceProcedures_YB";
	}
	
	
	@RequestMapping(value = "/_service/MemberStatus_YB.do", method = RequestMethod.GET)
	public ModelAndView MemberStatus(Model model) {
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		if (loginInfo != null) {
			
			String login = loginInfo.getUserName();
			
			model.addAttribute("login", login);
		}		
		
		// 데이터베이스로부터 Gender 데이터 불러오기
		User input = new User();
		
		int outputMen = 0;
		int outputWomen = 0;
		try {
			outputMen = userService.getSelectCountGenderMen(input);
			outputWomen = userService.getSelectCountGenderWomen(input);
		} catch (Exception e) {	
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		// 데이터 json형식으로 변환
		Gson gson = new Gson();
		String jsonListm = gson.toJson(outputMen);
		String jsonListw = gson.toJson(outputWomen);
		
		// View처리
		model.addAttribute("jsonListm", jsonListm);
		model.addAttribute("jsonListw", jsonListw);
		
		
		return new ModelAndView("_service/MemberStatus_YB");
	}
	
	
	@RequestMapping(value = "/_service/MemberStatus2_YB.do", method = RequestMethod.GET)
	public ModelAndView MemberStatus2(Model model) {
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		if (loginInfo != null) {
			
			String login = loginInfo.getUserName();
			
			model.addAttribute("login", login);
		}		

		// 데이터베이스로부터 Sal_Annual 데이터 불러오기
		User input = new User();

		int outputSal0010M = 0;
		int outputSal0010W = 0;		
		
		int outputSal2000M = 0;
		int outputSal2000W = 0;
		
		int outputSal3000M = 0;
		int outputSal3000W = 0;
		
		int outputSal4000M = 0;
		int outputSal4000W = 0;
		
		int outputSal5000M = 0;
		int outputSal5000W = 0;
		
		int outputSal6070M = 0;
		int outputSal6070W = 0;
		
		int outputSal8090M = 0;
		int outputSal8090W = 0;
	
		int outputSal10000M = 0;
		int outputSal10000W = 0;
		
		try {
			outputSal0010M = userService.getselectCountAnnualSalary0010M(input);
			outputSal0010W = userService.getselectCountAnnualSalary0010W(input);
			
			outputSal2000M = userService.getselectCountAnnualSalary2000M(input);
			outputSal2000W = userService.getselectCountAnnualSalary2000W(input);
			
			outputSal3000M = userService.getselectCountAnnualSalary3000M(input);
			outputSal3000W = userService.getselectCountAnnualSalary3000W(input);

			outputSal4000M = userService.getselectCountAnnualSalary4000M(input);
			outputSal4000W = userService.getselectCountAnnualSalary4000W(input);

			outputSal5000M = userService.getselectCountAnnualSalary5000M(input);
			outputSal5000W = userService.getselectCountAnnualSalary5000W(input);
			
			outputSal6070M = userService.getselectCountAnnualSalary6070M(input);
			outputSal6070W = userService.getselectCountAnnualSalary6070W(input);
			
			outputSal8090M = userService.getselectCountAnnualSalary8090M(input);
			outputSal8090W = userService.getselectCountAnnualSalary8090W(input);
			
			outputSal10000M = userService.getselectCountAnnualSalary10000M(input);
			outputSal10000W = userService.getselectCountAnnualSalary10000W(input);
			
		} catch (Exception e) {	
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		// 데이터 json형식으로 변환
		Gson gson = new Gson();
		String jsonSal0010M = gson.toJson(outputSal0010M);
		String jsonSal0010W = gson.toJson(outputSal0010W);
		
		String jsonSal2000M = gson.toJson(outputSal2000M);
		String jsonSal2000W = gson.toJson(outputSal2000W);
		
		String jsonSal3000M = gson.toJson(outputSal3000M);
		String jsonSal3000W = gson.toJson(outputSal3000W);
		
		String jsonSal4000M = gson.toJson(outputSal4000M);
		String jsonSal4000W = gson.toJson(outputSal4000W);
		
		String jsonSal5000M = gson.toJson(outputSal5000M);
		String jsonSal5000W = gson.toJson(outputSal5000W);
		
		String jsonSal6070M = gson.toJson(outputSal6070M);
		String jsonSal6070W = gson.toJson(outputSal6070W);
		
		String jsonSal8090M = gson.toJson(outputSal8090M);
		String jsonSal8090W = gson.toJson(outputSal8090W);
		
		String jsonSal10000M = gson.toJson(outputSal10000M);
		String jsonSal10000W = gson.toJson(outputSal10000W);
		
		
		// View처리
		model.addAttribute("jsonSal0010M", jsonSal0010M);
		model.addAttribute("jsonSal0010W", jsonSal0010W);
		
		model.addAttribute("jsonSal2000M", jsonSal2000M);
		model.addAttribute("jsonSal2000W", jsonSal2000W);
		
		model.addAttribute("jsonSal3000M", jsonSal3000M);
		model.addAttribute("jsonSal3000W", jsonSal3000W);
		
		model.addAttribute("jsonSal4000M", jsonSal4000M);
		model.addAttribute("jsonSal4000W", jsonSal4000W);
		
		model.addAttribute("jsonSal5000M", jsonSal5000M);
		model.addAttribute("jsonSal5000W", jsonSal5000W);
		
		model.addAttribute("jsonSal6070M", jsonSal6070M);
		model.addAttribute("jsonSal6070W", jsonSal6070W);
		
		model.addAttribute("jsonSal8090M", jsonSal8090M);
		model.addAttribute("jsonSal8090W", jsonSal8090W);
		
		model.addAttribute("jsonSal10000M", jsonSal10000M);
		model.addAttribute("jsonSal10000W", jsonSal10000W);

		return new ModelAndView("_service/MemberStatus2_YB");
	}
	
	
	
	@RequestMapping(value = "/_service/MemberStatus3_YB.do", method = RequestMethod.GET)
	public ModelAndView MemberStatus3(Model model) {
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		if (loginInfo != null) {
			
			String login = loginInfo.getUserName();
			
			model.addAttribute("login", login);
		}		
		
		// 데이터베이스로부터 나이 데이터 불러오기
		User input = new User();

		int outputAge2024M = 0;
		int outputAge2024W = 0;		
		
		int outputAge2529M = 0;
		int outputAge2529W = 0;
		
		int outputAge3034M = 0;
		int outputAge3034W = 0;
		
		int outputAge3539M = 0;
		int outputAge3539W = 0;
		
		int outputAge4049M = 0;
		int outputAge4049W = 0;
		
		int outputAge50PlusM = 0;
		int outputAge50PlusW = 0;
		
		try {
			outputAge2024M = userService.getselectCountAge2024M(input);
			outputAge2024W = userService.getselectCountAge2024W(input);
			
			outputAge2529M = userService.getselectCountAge2529M(input);
			outputAge2529W = userService.getselectCountAge2529W(input);
			
			outputAge3034M = userService.getselectCountAge3034M(input);
			outputAge3034W = userService.getselectCountAge3034W(input);

			outputAge3539M = userService.getselectCountAge3539M(input);
			outputAge3539W = userService.getselectCountAge3539W(input);

			outputAge4049M = userService.getselectCountAge4049M(input);
			outputAge4049W = userService.getselectCountAge4049W(input);
			
			outputAge50PlusM = userService.getselectCountAge50PlusM(input);
			outputAge50PlusW = userService.getselectCountAge50PlusW(input);
			
		} catch (Exception e) {	
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		// 데이터 json형식으로 변환
		Gson gson = new Gson();
		String jsonAge2024M = gson.toJson(outputAge2024M);
		String jsonAge2024W = gson.toJson(outputAge2024W);
		
		String jsonAge2529M = gson.toJson(outputAge2529M);
		String jsonAge2529W = gson.toJson(outputAge2529W);
		
		String jsonAge3034M = gson.toJson(outputAge3034M);
		String jsonAge3034W = gson.toJson(outputAge3034W);
		
		String jsonAge3539M = gson.toJson(outputAge3539M);
		String jsonAge3539W = gson.toJson(outputAge3539W);
		
		String jsonAge4049M = gson.toJson(outputAge4049M);
		String jsonAge4049W = gson.toJson(outputAge4049W);
		
		String jsonAge50PlusM = gson.toJson(outputAge50PlusM);
		String jsonAge50PlusW = gson.toJson(outputAge50PlusW);
		
		// View처리
		model.addAttribute("jsonAge2024M", jsonAge2024M);
		model.addAttribute("jsonAge2024W", jsonAge2024W);
		
		model.addAttribute("jsonAge2529M", jsonAge2529M);
		model.addAttribute("jsonAge2529W", jsonAge2529W);
		
		model.addAttribute("jsonAge3034M", jsonAge3034M);
		model.addAttribute("jsonAge3034W", jsonAge3034W);
		
		model.addAttribute("jsonAge3539M", jsonAge3539M);
		model.addAttribute("jsonAge3539W", jsonAge3539W);
		
		model.addAttribute("jsonAge4049M", jsonAge4049M);
		model.addAttribute("jsonAge4049W", jsonAge4049W);
		
		model.addAttribute("jsonAge50PlusM", jsonAge50PlusM);
		model.addAttribute("jsonAge50PlusW", jsonAge50PlusW);

		return new ModelAndView("_service/MemberStatus3_YB");		
	}
	
	
	@RequestMapping(value = "/_service/MemberStatus4_YB.do", method = RequestMethod.GET)
	public ModelAndView MemberStatus4(Model model) {
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		if (loginInfo != null) {
			
			String login = loginInfo.getUserName();
			
			model.addAttribute("login", login);
		}		

		// 데이터베이스로부터 학력 데이터 불러오기
		User input = new User();

		int outputHighschoolM = 0;
		int outputHighschoolW = 0;		
		
		int outputCollegeM = 0;
		int outputCollegeW = 0;
		
		int outputUniversityM = 0;
		int outputUniversityW = 0;
		
		int outputGraduateSchoolM = 0;
		int outputGraduateSchoolW = 0;
		
		int outputDoctoralM = 0;
		int outputDoctoralW = 0;
		
		try {
			outputHighschoolM = userService.getselectCountAnnualSalary0010M(input);
			outputHighschoolW = userService.getselectCountAnnualSalary0010W(input);
			
			outputCollegeM = userService.getselectCountAnnualSalary2000M(input);
			outputCollegeW = userService.getselectCountAnnualSalary2000W(input);
			
			outputUniversityM = userService.getselectCountAnnualSalary3000M(input);
			outputUniversityW = userService.getselectCountAnnualSalary3000W(input);

			outputGraduateSchoolM = userService.getselectCountAnnualSalary4000M(input);
			outputGraduateSchoolW = userService.getselectCountAnnualSalary4000W(input);

			outputDoctoralM = userService.getselectCountAnnualSalary5000M(input);
			outputDoctoralW = userService.getselectCountAnnualSalary5000W(input);
			
		} catch (Exception e) {	
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		// 데이터 json형식으로 변환
		Gson gson = new Gson();
		String jsonHighschoolM = gson.toJson(outputHighschoolM);
		String jsonHighschoolW = gson.toJson(outputHighschoolW);
		
		String jsonCollegeM = gson.toJson(outputCollegeM);
		String jsonCollegeW = gson.toJson(outputCollegeW);
		
		String jsonUniversityM = gson.toJson(outputUniversityM);
		String jsonUniversityW = gson.toJson(outputUniversityW);
		
		String jsonGraduateSchoolM = gson.toJson(outputGraduateSchoolM);
		String jsonGraduateSchoolW = gson.toJson(outputGraduateSchoolW);
		
		String jsonDoctoralM = gson.toJson(outputDoctoralM);
		String jsonDoctoralW = gson.toJson(outputDoctoralW);
		
		// View처리
		model.addAttribute("jsonHighschoolM", jsonHighschoolM);
		model.addAttribute("jsonHighschoolW", jsonHighschoolW);
		
		model.addAttribute("jsonCollegeM", jsonCollegeM);
		model.addAttribute("jsonCollegeW", jsonCollegeW);
		
		model.addAttribute("jsonUniversityM", jsonUniversityM);
		model.addAttribute("jsonUniversityW", jsonUniversityW);
		
		model.addAttribute("jsonGraduateSchoolM", jsonGraduateSchoolM);
		model.addAttribute("jsonGraduateSchoolW", jsonGraduateSchoolW);
		
		model.addAttribute("jsonDoctoralM", jsonDoctoralM);
		model.addAttribute("jsonDoctoralW", jsonDoctoralW);
		
		return new ModelAndView("_service/MemberStatus4_YB");		
	}
		
	/**----------------------- 서비스 안내 Controller 끝 --------------------------------*/
	
	
	
	/**----------------------- 연-결 코치 Controller 시작 -------------------------------*/
	@RequestMapping(value = "/_coach/DatingCourse_YB.do", method = RequestMethod.GET)
	public String DatingCourse(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		if (loginInfo != null) {
			
			String login = loginInfo.getUserName();
			
			model.addAttribute("login", login);
		}		
		
		return "_coach/DatingCourse_YB";
	}
	
	@RequestMapping(value = "/_coach/DatingCourse2_YB.do", method = RequestMethod.GET)
	public String DatingCourse2(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		if (loginInfo != null) {
			
			String login = loginInfo.getUserName();
			
			model.addAttribute("login", login);
		}		
		
		return "_coach/DatingCourse2_YB";
	}	
	
	/**----------------------- 연-결 코치 Controller 끝 --------------------------------*/
	
	
	
	/**----------------------- My연-결 Controller 시작 --------------------------------*/
	@RequestMapping(value = "/_mypage/Ex-MatchingRecord_YB.do", method = RequestMethod.GET)
	public String ExMatchingRecord(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		if (loginInfo != null) {
			
			String login = loginInfo.getUserName();
			
			model.addAttribute("login", login);
		}				
	

		return "_mypage/Ex-MatchingRecord_YB";
	}
	
	@RequestMapping(value = "/_mypage/Ex-MatchingRecord2_YB.do", method = RequestMethod.GET)
	public String ExMatchingRecord2(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		if (loginInfo != null) {
			
			String login = loginInfo.getUserName();
			
			model.addAttribute("login", login);
		}		
		
		return "_mypage/Ex-MatchingRecord2_YB";
	}	
	
	
	/**----------------------- My연-결 Controller 끝 ---------------------------------*/
	
	
	
	/**----------------------- 관리자 Controller 시작 ---------------------------------*/
	/** 게시판 목록 페이지 */
	@RequestMapping(value = "/_admin/admin_MngBoard_WeddingStory_YB.do", method = RequestMethod.GET)
	public ModelAndView MngBoard_WeddingStory_List(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		if (loginInfo != null) {
			
			String login = loginInfo.getUserName();
			
			model.addAttribute("login", login);
		}
		
		/** 1) 필요한 변수값 생성 */
		 String keyword = webHelper.getString("keyword", "");    // 검색어
	     int nowPage    = webHelper.getInt("page", 1);           // 페이지 번호 (기본값 1)
	     int totalCount = 0;                                     // 전체 게시글 수
	     int listCount  = 10;                                    // 한 페이지당 표시할 목록 수
	     int pageCount  = 5;                                     // 한 그룹당 표시할 페이지 번호 수
	     
	     int BoardId = webHelper.getInt("BoardId");
		 int MemberId = loginInfo.getMemberId();
		 String UserName = loginInfo.getUserName();
		 
	     /** 2) 데이터 조회하기 */
	     // 조회에 필요한 조건값(검색어)를 Beans에 담는다.
	     Board input = new Board();
	     input.setBoardId(BoardId);
	     input.setTitle(keyword);
	     input.setUserName(UserName);
	     input.setMemberId(MemberId);
	     
	     List<Board> output = null; // 조회결과가 저장될 객체
	     PageData pageData = null;  // 페이지 번호를 계산한 결과가 저장될 객체
	     
	     try {
	            // 전체 게시글 수 조회
	            totalCount = boardService.getBoardCountStory(input);
	            // 페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
	            pageData = new PageData(nowPage, totalCount, listCount, pageCount);

	            // SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
	            Board.setOffset(pageData.getOffset());
	            Board.setListCount(pageData.getListCount());
	            
	            // 데이터 조회하기
	            output = boardService.getBoardListAdminStory(input);
	     } catch (Exception e) {
	            return webHelper.redirect(null, e.getLocalizedMessage());
	     }
	     
	     /** 3) View 처리 */
	     model.addAttribute("keyword", keyword);
	     model.addAttribute("output", output);
	     model.addAttribute("pageData", pageData);
	     
		return new ModelAndView("_admin/admin_MngBoard_WeddingStory_YB");
	}
	
	/** 상세 게시글 페이지  */
	@RequestMapping(value = "/_admin/admin_MngBoard_WeddingStoryRead_YB.do", method = RequestMethod.GET)
	public ModelAndView MngBoard_WeddingStoryRead_Edit(Model model) {
		
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		if (loginInfo != null) {
			
			String login = loginInfo.getUserName();
			
			model.addAttribute("login", login);
		}		
		
        /** 1) 필요한 변수값 생성 */
        // 조회할 대상에 대한 값
		int BoardId = webHelper.getInt("BoardId");
        String Title = webHelper.getString("Title");
        int viewcount = webHelper.getInt("viewcount");
        
        // 이 값이 존재하지 않는다면 데이터 조회가 불가능하므로 반드시 필수값으로 처리해야 한다.
        if (BoardId == 0) {
            return webHelper.redirect(null, "조회 제목이 없습니다.");
        }

        /** 2) 데이터 조회하기 */
        // 데이터 조회에 필요한 조건값을 Beans에 저장하기
        Board input = new Board();
        input.setBoardId(BoardId);
        input.setTitle(Title);
        
        Board inputview = new Board();
        inputview.setViewcount(viewcount);
        inputview.setBoardId(BoardId);
        
     // 조회결과를 저장할 객체 선언
        int outputview = 0;
        Board output = null;
        Board prevBoard = null;
        Board nextBoard = null;

        
        try {
            // 데이터 조회
        	outputview = boardService.editviewcountAdminStory(inputview);
            output = boardService.getBoardItemAdminStory(input);
            prevBoard = boardService.getPrevPageAdminStory(input);
            nextBoard = boardService.getNextPageAdminStory(input);
            
        } catch (Exception e) {
            return webHelper.redirect(null, e.getLocalizedMessage());
        }
 
		model.addAttribute("nextBoard",nextBoard);
		model.addAttribute("prevBoard",prevBoard);
		model.addAttribute("outputview",outputview);
		model.addAttribute("output", output);
        /** 3) View 처리 */
		return new ModelAndView("_admin/admin_MngBoard_WeddingStoryRead_YB");
	}
	


	/** 작성 폼 페이지 */
	@RequestMapping(value = "/_admin/admin_MngBoard_WeddingStoryWrite_YB.do", method = RequestMethod.GET)
	public ModelAndView MngBoard_WeddingStoryWrite_Add(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		if (loginInfo != null) {
			
			String login = loginInfo.getUserName();
			
			model.addAttribute("login", login);
		}		
		return new ModelAndView("_admin/admin_MngBoard_WeddingStoryWrite_YB");
	}	


	@RequestMapping(value = "/_admin/admin_MngBoard_WeddingStoryWrite_AddOk_YB.do", method = RequestMethod.POST)
	public ModelAndView MngBoard_WeddingStoryWrite_AddOk(Model model) {
	
		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		/** 1) 사용자가 입력한 파라미터 수신 및 유효성 검사 */
		int MemberId = loginInfo.getMemberId();
		String Title = webHelper.getString("Title");
		String Content = webHelper.getString("Content");
		int Category = webHelper.getInt("Category");
		String CreationDate = webHelper.getString("CreationDate");
	
	    /** 2) 데이터 저장하기 */
	    // 저장할 값들을 Beans에 담는다.
		Board input = new Board();
		input.setContent(Content);
		input.setTitle(Title);
		input.setMemberId(MemberId);
		input.setCategory(Category);
		input.setCreationDate(CreationDate);	
		
		try {
			// 데이터 저장
			// --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
			boardService.addBoardAdminStory(input);
	
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
	
		// View에 추가
	
		String redirectUrl = contextPath + "/_admin/admin_MngBoard_WeddingStoryRead_YB.do?BoardId=" + input.getBoardId();
		return webHelper.redirect(redirectUrl, "성혼스토리 게시판에 등록되었습니다.");
	}	

	
	/** 수정 폼 페이지 */
	@RequestMapping(value = "/_admin/admin_MngBoard_WeddingStoryEdit_YB.do", method = RequestMethod.GET)
	public ModelAndView MngBoard_WeddingStoryEdit(Model model) {

		User loginInfo = (User) webHelper.getSession("loginInfo");
		
		if (loginInfo != null) {
			
			String login = loginInfo.getUserName();
			
			model.addAttribute("login", login);
		}
		
        /** 1) 필요한 변수값 생성 */
        // 조회할 대상에 대한 값
		int BoardId = webHelper.getInt("BoardId");
        String Title = webHelper.getString("Title");
        String Content = webHelper.getString("Content");
        
        // 이 값이 존재하지 않는다면 데이터 조회가 불가능하므로 반드시 필수값으로 처리해야 한다.
        if (BoardId == 0) {
			return webHelper.redirect(null, "성혼스토리 게시글번호가 없습니다.");
		}
        
        /** 2) 데이터 조회하기 */
        // 데이터 조회에 필요한 조건값을 Beans에 저장하기
        Board input = new Board();
        input.setBoardId(BoardId);
        input.setTitle(Title);
        input.setContent(Content);
        
        // 게시글 조회결과를 저장할 객체 선언
        Board output = null;
        
      //  List<User> userList = null;
        
        try {
            // 관리자 게시판 성혼스토리 기본 정보 조회
        	output = boardService.getBoardItemAdminStory(input);
        } catch (Exception e) {
            return webHelper.redirect(null, e.getLocalizedMessage());
        }
        
        /** 3) View 처리 */
        model.addAttribute("output", output);
        return new ModelAndView("_admin/admin_MngBoard_WeddingStoryEdit_YB"); 
	}	
	
    /** 수정 폼에 대한 action 페이지 */
    @RequestMapping(value = "/_admin/admin_MngBoard_WeddingStory_EditOk.do", method = RequestMethod.POST)
    public ModelAndView admin_MngBoard_WeddingStory_EditOk(Model model) {
    	
    	User loginInfo = (User) webHelper.getSession("loginInfo");
    	
    	/** 1) 사용자가 입력한 파라미터 수신 및 유효성 검사 */
    	int BoardId = webHelper.getInt("BoardId");
    	String Title = webHelper.getString("Title");
    	String Content = webHelper.getString("Content");
    	int Category = webHelper.getInt("Category");
    	String CreationDate = webHelper.getString("CreationDate");
    	int MemberId = loginInfo.getMemberId();
    	
    	if (BoardId == 0) {
			return webHelper.redirect(null, "등록할 게시글이 없습니다.");
		}

        /** 2) 데이터 저장하기 */
        // 저장할 값들을 Beans에 담는다.
    	Board input = new Board();
    	input.setBoardId(BoardId);
    	input.setContent(Content);
    	input.setTitle(Title);
    	input.setMemberId(MemberId);
    	input.setCategory(Category);
    	input.setCreationDate(CreationDate);

        try {
            // 데이터 수정
            boardService.editBoardAdminStory(input);
        } catch (Exception e) {
            return webHelper.redirect(null, e.getLocalizedMessage());
        }

        /** 3) 결과를 확인하기 위한 페이지 이동 */
        // 수정한 대상을 상세페이지에 알려주기 위해서 PK값을 전달해야 한다. 
		String redirectUrl = contextPath + "/_admin/admin_MngBoard_WeddingStoryRead_YB.do?BoardId=" + input.getBoardId();
		return webHelper.redirect(redirectUrl, "성혼스토리 게시글이 수정 되었습니다.");
    }	
	

	@RequestMapping(value = "/_admin/admin_MngBoard_WeddingStory_DeleteOk.do", method = RequestMethod.GET)
	public ModelAndView delete_ok(Model model) {

		int BoardId = webHelper.getInt("BoardId");

		if (BoardId == 0) {
			return webHelper.redirect(null, "성혼스토리 게시글이 없습니다.");
		}

		Board input = new Board();
		input.setBoardId(BoardId);

		try {
			// 데이터 삭제
			boardService.deleteBoardAdminStory(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		return webHelper.redirect(contextPath + "/_admin/admin_MngBoard_WeddingStory_YB.do", "게시글이 삭제되었습니다.");
	}	
	
	
	/**----------------------- 관리자 Controller 끝 ----------------------------------*/
	
	
}
