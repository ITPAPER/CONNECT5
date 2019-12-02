package study.spring.simplespring;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import study.spring.simplespring.helper.WebHelper;
import study.spring.simplespring.model.User;

/**
 * Handles requests for the application home page.
 */

@Controller
public class HomeController {

   @Autowired
   WebHelper webHelper;

   @RequestMapping(value = { "/", "home.do" }, method = { RequestMethod.GET, RequestMethod.POST })
   public ModelAndView home(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {

      User loginInfo = (User) webHelper.getSession("loginInfo");

      if (loginInfo != null) {

         String output = loginInfo.getUserName();

         model.addAttribute("output", output);
      }

      return new ModelAndView("home");
   }
}