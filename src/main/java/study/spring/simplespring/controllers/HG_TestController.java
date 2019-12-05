package study.spring.simplespring.controllers;

import java.util.List;

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
import study.spring.simplespring.service.TestService;

@Controller
public class HG_TestController {

	@Autowired
	WebHelper webHelper;

	@Autowired
	RegexHelper regexHelper;

	@Autowired
	TestService testService;

	@Value("#{servletContext.contextPath}")
	String contextPath;

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
}
