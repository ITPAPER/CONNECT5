package study.spring.simplespring.model;

import lombok.Data;

@Data
public class User {

	private int MemberId;

	private String UserId;

	private String UserPw;

	private String UserName;

	private String BirthDate;

	private int Gender;

	private int IsMarried;

	private String Mobile;

	private String TEL;

	private String Email;

	private String PostCode;

	private String BasicAddress;

	private String StateAddress;

	private String DetailAddress;

	private String Join_Date;

	private int isadmin;

	private int Member_Lv;

	private String Job;

	private String Edu_Lv;

	private String User_Img;

	private int Height;

	private String BldType;

	private int Date_Loc;

	private int Style;

	private int Personality;

	private int Sal_Annual;

	private int Date_Count;

	private int Date_Rest;

	private int isSpUser;

	private int ManagerId;
	
	private int count;
	
	private String UserPw1;
	
	private static int offset;

	/** LIMIT 절에서 사용할 조회할 데이터 수 */
	private static int listCount;

	public static int getOffset() {
		return offset;
	}

	public static void setOffset(int offset) {
		User.offset = offset;
	}

	public static int getListCount() {
		return listCount;
	}

	public static void setListCount(int listCount) {
		User.listCount = listCount;
	}
}