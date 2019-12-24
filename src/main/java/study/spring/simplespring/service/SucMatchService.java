package study.spring.simplespring.service;

import java.util.List;

import study.spring.simplespring.model.SucMatch;

public interface SucMatchService {
	
	public int addSucMatch(SucMatch input) throws Exception;
	
	public SucMatch getSucMatchItem(SucMatch sucmatch) throws Exception;
	
	public List<SucMatch> getSucMatchList(SucMatch input) throws Exception;
	
	public int editSucMatch(SucMatch input) throws Exception;
	
	public int editSucMatch1(SucMatch input) throws Exception;
	
	public int deleteSucMatch(SucMatch input) throws Exception;
}
