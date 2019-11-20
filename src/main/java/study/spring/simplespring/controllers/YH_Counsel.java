package study.spring.simplespring.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import study.spring.simplespring.helper.MailHelper;
import study.spring.simplespring.helper.RegexHelper;
import study.spring.simplespring.helper.WebHelper;

@Controller
public class YH_Counsel {

	@Autowired
	WebHelper webHelper;

	@Autowired
	RegexHelper regexHelper;

	@Autowired
	MailHelper mailHelper;

	/** 발송 폼 구성 페이지 */
	@RequestMapping(value = "/_index/counsel_YH.do", method = RequestMethod.GET)
	public String write() {
		return "_index/counsel_YH";
	}

	/** action 페이지 */
	@RequestMapping(value = "/_index/send.do", method = RequestMethod.POST)
	public ModelAndView send(Model model) {
		/** 사용자의 입력값 받기 */
		String to = webHelper.getString("to");
		String subject = webHelper.getString("subject");
		String content = webHelper.getString("content");

		/** 입력여부 검사후, 입력되지 않은 경우 이전 페이지로 보내기 */
		// 받는 메일 주소 검사하기

		if (!regexHelper.isValue(to)) {
			return webHelper.redirect(null, "받는 사람의 이메일 주소를 입력하세요.");
		}

		if (!regexHelper.isEmail(to)) {
			return webHelper.redirect(null, "받는 사람의 이메일 주소가 잘못되었습니다.");
		}
		// 메일 제목 --> null체크도 입력 여부를 확인할 수 있다.
		if (subject == null) {
			return webHelper.redirect(null, "받는 사람의 이름을 입력하세요.");
		}

		// 메일 내용 --> null체크도 입력 여부를 확인할 수 있다.
		if (content == null) {
			return webHelper.redirect(null, "메일의 내용을 입력하세요.");
		}

		/** 메일 발송 처리 */
		try {
			// sendMail() 메서드 선언시 throws를 정의했기 때문에 예외처리가 요구된다.
			mailHelper.sendMail(to, subject, content);
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.redirect(null, "메일 발송에 실패했습니다.");
		}

		/** 결과처리 */
		return webHelper.redirect("counsel_YH.do", "메일 발송에 성공했습니다.");
	}
}
