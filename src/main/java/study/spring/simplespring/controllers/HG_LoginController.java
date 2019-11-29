package study.spring.simplespring.controllers;

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
import study.spring.simplespring.service.UserService;
import study.spring.simplespring.service.impl.UserServiceImpl;

@Controller
public class HG_LoginController {

   @Autowired
   WebHelper webHelper;

   @Autowired
   UserService userService;

   @Autowired
   UserServiceImpl userServiceImpl;

   @RequestMapping(value = "/_login/login_HG.do", method = RequestMethod.GET)
   public String location(Model model) {

      return "_login/login_HG";

   }

   @RequestMapping(value = "/_login/loginOk.do", method = RequestMethod.POST)
   public ModelAndView loginaction(Model model, HttpServletRequest request, HttpServletResponse response) {

      String UserId = webHelper.getString("UserId");
      String UserPw = webHelper.getString("UserPw");

      User input = new User();
      input.setUserId(UserId);
      input.setUserPw(UserPw);

      User loginInfo = null;
      try {

         loginInfo = userService.selectLoginInfo(input);
      } catch (Exception e) {
         return webHelper.redirect(null, e.getLocalizedMessage());
      }

      webHelper.setSession("loginInfo", loginInfo);

      int admin = loginInfo.getIsadmin();
      if (admin == 1) {
         return new ModelAndView("_admin/admin_main_SE");
      }
      

      String viewPath = "home";
      return new ModelAndView(viewPath);

   }
}