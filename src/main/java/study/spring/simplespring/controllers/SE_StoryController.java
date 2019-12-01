package study.spring.simplespring.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import study.spring.simplespring.helper.PageData;
import study.spring.simplespring.helper.RegexHelper;
import study.spring.simplespring.helper.WebHelper;
import study.spring.simplespring.model.Board;
import study.spring.simplespring.service.BoardService;
import study.spring.simplespring.service.UserService;

@Controller
public class SE_StoryController {
	
	@Autowired WebHelper webHelper;
	
	@Autowired RegexHelper regexHelper;
	
	@Autowired BoardService boardService;
	
	@Autowired UserService userService;
	
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	@RequestMapping(value = "/_info/story_SE.do", method = RequestMethod.GET)
	public ModelAndView view(Model model) {
		
		/** 1) 필요한 변수값 생성 */
        String keyword = webHelper.getString("keyword", "");    // 검색어
        int nowPage    = webHelper.getInt("page", 1);           // 페이지 번호 (기본값 1)
        int totalCount = 0;                                     // 전체 게시글 수
        int listCount  = 10;                                    // 한 페이지당 표시할 목록 수
        int pageCount  = 5;                                     // 한 그룹당 표시할 페이지 번호 수
        
        /** 2) 데이터 조회하기 */
        // 조회에 필요한 조건값(검색어)를 Beans에 담는다.
        Board input = new Board();
        input.setBoardId(0);
        input.setTitle(keyword);
        input.setUserId(keyword);
    	input.setCreationDate(keyword);
    	
        List<Board> output = null; // 조회결과가 저장될 객체
        PageData pageData = null;       // 페이지 번호를 계산한 결과가 저장될 객체

        try {
            // 전체 게시글 수 조회
            totalCount = boardService.getBoardCount(input);
            // 페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
            pageData = new PageData(nowPage, totalCount, listCount, pageCount);

            // SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
            Board.setOffset(pageData.getOffset());
            Board.setListCount(pageData.getListCount());

            // 데이터 조회하기
            output = boardService.getBoardListStory(input);
        } catch (Exception e) {
            return webHelper.redirect(null, e.getLocalizedMessage());
        }

        /** 3) View 처리 */
        model.addAttribute("keyword", keyword);
        model.addAttribute("output", output);
        model.addAttribute("pageData", pageData);

        return new ModelAndView("_info/story_SE");
	}
	
	@RequestMapping(value = "/_info/storyRead1_SE.do", method = RequestMethod.GET)
	public String read1(Model model) {

		return "_info/storyRead1_SE";
	}
	
	@RequestMapping(value = "/_info/storyRead2_SE.do", method = RequestMethod.GET)
	public ModelAndView read2(Model model) {
		
		 /** 1) 필요한 변수값 생성 */
	       // 조회할 대상에 대한 PK값
	       int boardId = webHelper.getInt("boardId");

	       // 이 값이 존재하지 않는다면 데이터 조회가 불가능하므로 반드시 필수값으로 처리해야 한다.
	       if (boardId == 0) {
	           return webHelper.redirect(null, "글번호가 없습니다.");
	       }

	       /** 2) 데이터 조회하기 */
	       // 데이터 조회에 필요한 조건값을 Beans에 저장하기
	       Board input = new Board();
	       input.setBoardId(boardId);

	       // 조회결과를 저장할 객체 선언
	       Board output = null;

	       try {
	           // 데이터 조회
	           output = boardService.getBoardItem(input);
	       } catch (Exception e) {
	           return webHelper.redirect(null, e.getLocalizedMessage());
	       }
	       
	       /** 3) View 처리 */
	       model.addAttribute("output", output);
	       return new ModelAndView("_info/storyRead2_SE");
	}
}
