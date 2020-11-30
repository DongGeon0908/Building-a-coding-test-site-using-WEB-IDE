package org.dms.web.service;

import java.util.List;
import org.dms.web.domain.Criteria;

import org.dms.web.domain.CodeBoardVO;
import org.dms.web.domain.CodeFilterVO;

public interface CodeBoardService {
	public List<CodeBoardVO> getCodeBoardList(String user_id) throws Exception;
	public List<CodeBoardVO> getCodeBoardList(String user_id, Criteria criteria) throws Exception;
	public List<CodeBoardVO> getCodeBoardListBySearch(String user_id, String category, String search) throws Exception;
	public List<CodeBoardVO> getCodeBoardListBySearch(
			String user_id, 
			String category, 
			String search, 
			Criteria criteria) throws Exception;
	List<CodeBoardVO> getCodeBoardList_filter(String user_id, Criteria criteria, int problem_level, String category) throws Exception;
}
