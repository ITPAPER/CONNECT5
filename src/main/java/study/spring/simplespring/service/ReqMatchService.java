package study.spring.simplespring.service;

import java.util.List;

import study.spring.simplespring.model.ReqMatch;

public interface ReqMatchService {
	public ReqMatch getReqMatchItem(ReqMatch input) throws Exception;

	public List<ReqMatch> getReqMatchList(ReqMatch input) throws Exception;
	
	public int getReqMatchCount(ReqMatch input) throws Exception;

	public int addReqMatch(ReqMatch input) throws Exception;

	public int editReqSpService(ReqMatch input) throws Exception;

	public int deleteReqMatch(ReqMatch input) throws Exception;
}
