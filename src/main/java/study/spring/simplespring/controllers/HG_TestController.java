package study.spring.simplespring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HG_TestController {

	@RequestMapping(value = "/_test/lovescore1_HG.do", method = RequestMethod.GET)
	   public String lovescore1(Model model) {
	      
	      

	      return "_test/lovescore1_HG";

	   }
	   
	   @RequestMapping(value = "/_test/lovescore2_HG.do", method = RequestMethod.GET)
	   public String lovescore2(Model model) {
	      
	      

	      return "_test/lovescore2_HG";

	   }
	   
	   @RequestMapping(value = "/_test/lovescore3_HG.do", method = RequestMethod.GET)
	   public String lovescore3(Model model) {
	      
	      

	      return "_test/lovescore3_HG";

	   }
	   
	   @RequestMapping(value = "/_test/propensity1_HG.do", method = RequestMethod.GET)
	   public String propensity1(Model model) {
	      
	      

	      return "_test/propensity1_HG";

	   }
	   
	   @RequestMapping(value = "/_test/propensity2_HG.do", method = RequestMethod.GET)
	   public String propensity2(Model model) {
	      
	      

	      return "_test/propensity2_HG";

	   }
	   
	   @RequestMapping(value = "/_test/propensity3_HG.do", method = RequestMethod.GET)
	   public String propensity3(Model model) {
	      
	      

	      return "_test/propensity3_HG";

	   }
	   
	   @RequestMapping(value = "/_test/idealtype_HG.do", method = RequestMethod.GET)
	   public String Map(Model model) {

	      return "_test/idealtype_HG";

	   }
}
