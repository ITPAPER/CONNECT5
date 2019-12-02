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

	public int addBoard(Board input) throws Exception;

	public int editBoard(Board input) throws Exception;

	public int deleteBoard(Board input) throws Exception;
	
	public List<Board> getBoardList(Board input) throws Exception;
}
