package study.spring.simplespring.service;

import java.util.List;

import study.spring.simplespring.model.User;

public interface UserService {

	public User getUserItem(User input) throws Exception;
	
	public User getUserIdCheck(User input) throws Exception;

	public List<User> getUserList(User input) throws Exception;

	public int getUserCount(User input) throws Exception;

	public int addUser(User input) throws Exception;

	public int editUser(User input) throws Exception;

	public int deleteUser(User input) throws Exception;

	public User selectLoginInfo(User input) throws Exception;

	public User selectFindaccount(User input) throws Exception;

	public User selectMypage(User input) throws Exception;

	public int specialEditUser(User input) throws Exception;

	public int managerEditUser(User input) throws Exception;

	public List<User> getUserListadminUser(User input) throws Exception;

	public User getUserItemadminUser(User input) throws Exception;

	public int editUserinformation(User input) throws Exception;

	public int editUseradmin(User input) throws Exception;

	public int getSelectCountGenderMen(User input) throws Exception;

	public int getSelectCountGenderWomen(User input) throws Exception;

	public int getselectCountAnnualSalary0010M(User input) throws Exception;

	public int getselectCountAnnualSalary0010W(User input) throws Exception;

	public int getselectCountAnnualSalary2000M(User input) throws Exception;

	public int getselectCountAnnualSalary2000W(User input) throws Exception;

	public int getselectCountAnnualSalary3000M(User input) throws Exception;

	public int getselectCountAnnualSalary3000W(User input) throws Exception;

	public int getselectCountAnnualSalary4000M(User input) throws Exception;

	public int getselectCountAnnualSalary4000W(User input) throws Exception;

	public int getselectCountAnnualSalary5000M(User input) throws Exception;

	public int getselectCountAnnualSalary5000W(User input) throws Exception;

	public int getselectCountAnnualSalary6070M(User input) throws Exception;

	public int getselectCountAnnualSalary6070W(User input) throws Exception;

	public int getselectCountAnnualSalary8090M(User input) throws Exception;

	public int getselectCountAnnualSalary8090W(User input) throws Exception;

	public int getselectCountAnnualSalary10000M(User input) throws Exception;

	public int getselectCountAnnualSalary10000W(User input) throws Exception;

	public int getselectCountAge2024M(User input) throws Exception;

	public int getselectCountAge2024W(User input) throws Exception;

	public int getselectCountAge2529M(User input) throws Exception;

	public int getselectCountAge2529W(User input) throws Exception;

	public int getselectCountAge3034M(User input) throws Exception;

	public int getselectCountAge3034W(User input) throws Exception;

	public int getselectCountAge3539M(User input) throws Exception;

	public int getselectCountAge3539W(User input) throws Exception;

	public int getselectCountAge4049M(User input) throws Exception;

	public int getselectCountAge4049W(User input) throws Exception;

	public int getselectCountAge50PlusM(User input) throws Exception;

	public int getselectCountAge50PlusW(User input) throws Exception;

	public int getselectCountEduHighschoolM(User input) throws Exception;

	public int getselectCountEduHighschoolW(User input) throws Exception;

	public int getselectCountEduCollegeM(User input) throws Exception;

	public int getselectCountEduCollegeW(User input) throws Exception;

	public int getselectCountEduUniversityM(User input) throws Exception;

	public int getselectCountEduUniversityW(User input) throws Exception;

	public int getselectCountEduGraduateSchoolM(User input) throws Exception;

	public int getselectCountEduGraduateSchoolW(User input) throws Exception;

	public int getselectCountEduDoctoralM(User input) throws Exception;

	public int getselectCountEduDoctoralW(User input) throws Exception;
	
	public int editreqMatch_User(User input1) throws Exception;

}