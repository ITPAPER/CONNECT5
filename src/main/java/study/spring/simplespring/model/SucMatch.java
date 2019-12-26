package study.spring.simplespring.model;

import lombok.Data;

@Data
public class SucMatch {
	private int SucMatchId;
	private int Status;
	private int ReqMatchId;
	private int MemberId;
	private String UserName;
	private int OtherMemberId;
	private String BirthDate;
	private int Height;
	private String Edu_Lv;
	private String Job;

	/** LIMIT 절에서 사용할 조회 시작 위치 */
	private static int offset;
	
	/** LIMIT 절에서 사용할 조회할 데이터 수 */
	private static int listCount;

	public static int getOffset() {
		return offset;
	}

	public static void setOffset(int offset) {
		SucMatch.offset = offset;
	}

	public static int getListCount() {
		return listCount;
	}

	public static void setListCount(int listCount) {
		SucMatch.listCount = listCount;	
	}
}
