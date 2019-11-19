package study.spring.simplespring.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import lombok.extern.slf4j.Slf4j;
import study.spring.simplespring.model.Board;
import study.spring.simplespring.service.BoardService;

@Slf4j
public class BoardServiceImpl implements BoardService {
	
	SqlSession sqlSession;
	
	public BoardServiceImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public Board getBoardItem(Board input) throws Exception {
		Board result = null;

		try {
			result = sqlSession.selectOne("BoardMapper.selectItem", input);

			if (result == null) {
				throw new NullPointerException("result=null");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}

		return result;
	}

	@Override
	public List<Board> getBoardList(Board input) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getBoardCount(Board input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int addBoard(Board input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editBoard(Board input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteBoard(Board input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
