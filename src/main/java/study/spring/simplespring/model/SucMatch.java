package study.spring.simplespring.model;

import lombok.Data;

@Data
public class SucMatch {
	private int SucMatchId;
	private int Status;
	private int ReqMatchId;
	private int MemberId;
	private int OtherMemberId;
	
}
