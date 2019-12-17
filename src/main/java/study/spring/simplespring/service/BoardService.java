package study.spring.simplespring.service;

import java.util.List;

import study.spring.simplespring.model.Board;

public interface BoardService {
	public Board getBoardItem(Board input) throws Exception;

	public Board getBoardItemTip(Board input) throws Exception;
	
	public Board getBoardItemColumn(Board input) throws Exception;
	
	public Board getBoardItemadminQnA(Board input) throws Exception;
	
	public Board getBoardItemadminLater(Board input) throws Exception;

	public List<Board> getBoardListStory(Board input) throws Exception;

	public List<Board> getBoardListNotice(Board input) throws Exception;

	public List<Board> getBoardListQnA(Board input) throws Exception;

	public List<Board> getBoardListReview(Board input) throws Exception;
	
	public List<Board> getBoardListadminQnA(Board input) throws Exception;
	
	public List<Board> getBoardListadminLater(Board input) throws Exception;

	public List<Board> getBoardListTip(Board input) throws Exception;
	
	public List<Board> getBoardListColumn(Board input) throws Exception;

	public int getBoardCount(Board input) throws Exception;

	public int getBoardCountStory(Board input) throws Exception;

	public int getBoardCountNotice(Board input) throws Exception;

	public int getBoardCountReview(Board input) throws Exception;

	public int getBoardCountQnA(Board input) throws Exception;
	
	public int getBoardCountadminQnA(Board input) throws Exception;
	
	public int getBoardCountadminLater(Board input) throws Exception;

	public int addBoardTip(Board input) throws Exception;

	public int getBoardCountTip(Board input) throws Exception;

	public int addBoardColumn(Board input) throws Exception;

	public int getBoardCountColumn(Board input) throws Exception;

	public int addBoard(Board input) throws Exception;

	public int addBoardReview(Board input) throws Exception;

	public int addBoardQnA(Board input) throws Exception;

	public int editBoard(Board input) throws Exception;

	public int deleteBoard(Board input) throws Exception;

	public int deleteTip(Board input) throws Exception;

	public int editTip(Board input) throws Exception;

	public int deleteColumn(Board input) throws Exception;

	public int editColumn(Board input) throws Exception;

	public List<Board> getBoardList1_1(Board input) throws Exception;

	public int addBoard1_1(Board input) throws Exception;

	public Board getBoardItem1_1(Board input) throws Exception;

	public int editBoard1_1(Board input) throws Exception;

	public int addBoardNotice(Board input) throws Exception;

	public Board getBoardNotice(Board input) throws Exception;

	public int editBoardNotice(Board input) throws Exception;

	public int deleteBoardNotice(Board input) throws Exception;

	public List<Board> getBoardListadminNotice(Board input) throws Exception;

	public List<Board> getBoardListadmin1_1(Board input) throws Exception;

	public Board getBoardItemadmin1_1(Board input) throws Exception;
}
