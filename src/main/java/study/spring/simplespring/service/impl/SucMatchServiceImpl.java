package study.spring.simplespring.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.spring.simplespring.model.SucMatch;
import study.spring.simplespring.service.SucMatchService;


@Service
@Slf4j
public class SucMatchServiceImpl implements SucMatchService {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int addSucMatch(SucMatch input) throws Exception {
		int result = 0;

		try {
			
			result = sqlSession.insert("SucMatchMapper.insertSucMatchItem", input);

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

}
