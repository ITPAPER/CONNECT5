package study.spring.simplespring.model;

import lombok.Data;

@Data
public class SucMatch {
	private int SucMatchId;
	private int Status;
	private int ReqMatchId;
	private int MemberId;

	private int sucMemberId;
	private int myMemberId;
	private int partnerMemberId;
	private String UserName;
	
	private String myUserName;
	private String partnerUserName;
	private int IsMarried;
	private int MyMarry;
	private int PartnerMarry;
	private String myMobile;
	
	

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

	private String Height;

	private String BldType;

	private String Date_Loc;

	private String Style;

	private String Personality;

	private String Sal_Annual;

	private String Date_Count;
	
	private String Date_Rest;
	
	private int OtherMemberId;
	
}
