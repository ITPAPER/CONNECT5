package study.spring.simplespring.service;

import java.util.List;

import study.spring.simplespring.model.User;

public interface UserService {

   public User getUserItem(User input) throws Exception;
   
   public List<User> getUserList(User input) throws Exception;
   
   public int getUserCount(User input) throws Exception;
   
   public int addUser(User input) throws Exception;
   
   public int editUser(User input) throws Exception;
   
   public int deleteUser(User input) throws Exception;

   public User selectLoginInfo(User input) throws Exception;
   
   public User selectFindaccount(User input) throws Exception;
   
   public User selectMypage(User input) throws Exception;
}