package study.spring.simplespring.service;

import java.util.List;

import study.spring.simplespring.model.Reply;

public interface ReplyService {

	public List<Reply> getReplyList(Reply input) throws Exception;

	public int addReply(Reply input) throws Exception;

	public int editReply(Reply input) throws Exception;

	public int deleteReply(Reply input) throws Exception;

}
