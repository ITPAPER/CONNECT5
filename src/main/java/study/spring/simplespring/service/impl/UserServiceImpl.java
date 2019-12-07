package study.spring.simplespring.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.spring.simplespring.model.User;
import study.spring.simplespring.service.UserService;

@Service
@Slf4j
public class UserServiceImpl implements UserService {

	@Autowired
	SqlSession sqlSession;

	@Override
	public User getUserItem(User input) throws Exception {
		User result = null;

		try {
			result = sqlSession.selectOne("UserMapper.selectItem", input);

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
	public List<User> getUserList(User input) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getUserCount(User input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int addUser(User input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.insert("UserMapper.insertItem", input);

			if (result == 0) {
				throw new NullPointerException("result=0");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("저장된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 저장에 실패했습니다.");
		}

		return result;
	}

	@Override
	public int editUser(User input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.insert("UserMapper.updateItem1", input);

			if (result == 0) {
				throw new NullPointerException("result=0");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("수정된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 수정에 실패했습니다.");
		}

		return result;
	}

	@Override
	public int deleteUser(User input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public User selectLoginInfo(User input) throws Exception {
		User result = null;

		try {

			result = sqlSession.selectOne("UserMapper.selectLoginInfo", input);
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
	public User selectFindaccount(User input) throws Exception {
		User result = null;

		try {

			result = sqlSession.selectOne("UserMapper.selectFindaccount", input);
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
	public User selectMypage(User input) throws Exception {
		User result = null;

		try {

			result = sqlSession.selectOne("UserMapper.selectMypage", input);
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
}