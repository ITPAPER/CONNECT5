package study.spring.simplespring.service;

import java.util.List;

import study.spring.simplespring.model.Board;

public interface BoardService {
	public Board getBoardItem(Board input) throws Exception;
	
	public List<Board> getBoardListStory(Board input) throws Exception;
	
	public List<Board> getBoardListNotice(Board input) throws Exception;

	public List<Board> getBoardListQnA(Board input) throws Exception;
	
	public List<Board> getBoardListReview(Board input) throws Exception;

	public int getBoardCount(Board input) throws Exception;
	
	public int getBoardCountStory(Board input) throws Exception;
	
	public int getBoardCountNotice(Board input) throws Exception;
	
	public int getBoardCountReview(Board input) throws Exception;
	
	public int getBoardCountQnA(Board input) throws Exception;
	
	public int addBoard(Board input) throws Exception;

	public int addBoardReview(Board input) throws Exception;
	
	public int addBoardQnA(Board input) throws Exception;

	public int editBoard(Board input) throws Exception;

	public int deleteBoard(Board input) throws Exception;
	
	public List<Board> getBoardList1_1(Board input) throws Exception;
	
	public int addBoard1_1(Board input) throws Exception;
	
	public Board getBoardItem1_1(Board input) throws Exception;
	
	public int editBoard1_1(Board input) throws Exception;
	
	public int addBoardNotice(Board input) throws Exception;
	
	public Board getBoardNotice(Board input) throws Exception; 
	
	public int editBoardNotice(Board input) throws Exception;
	
	public int deleteBoardNotice(Board input) throws Exception;
	
	public List<Board> getBoardListadminNotice(Board input) throws Exception;
	
	
}
