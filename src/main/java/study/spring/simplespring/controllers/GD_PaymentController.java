package study.spring.simplespring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GD_PaymentController {
	
	@RequestMapping(value = "/_payment/mustInput_SE.do", method = RequestMethod.GET)
	public String mustinput(Model model) {
		
		

		return "_payment/mustInput_SE";

	}
	@RequestMapping(value = "/_payment/payment_GD.do", method = RequestMethod.GET)
	public String payment(Model model) {
		
		

		return "_payment/payment_GD";

	}
	@RequestMapping(value = "/_payment/pay_ok_GD.do", method = RequestMethod.GET)
	public String pay_ok(Model model) {
		
		

		return "_payment/pay_ok_GD";

	}
	
	
	


}
