package study.spring.simplespring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import study.spring.simplespring.model.Manager;
import study.spring.simplespring.model.User;

@Service
public interface ManagerService {

	public Manager getManagerItem(Manager input) throws Exception;

	public List<Manager> getManagerList(Manager input) throws Exception;

	public int getManagerCount(Manager input) throws Exception;

	public int createManager(Manager input) throws Exception;

	public int deleteManager(Manager input) throws Exception;
	
	public int editManager(User input) throws Exception;
}
