package com.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.QuestionFileVo;
import com.model.QuestionVo;


@Repository
public class QuestionDao {
	
	@Autowired
	SqlSessionTemplate template;
	
	public int getQuestSequence() {
		return template.selectOne("question.getQuestSequence");
	}
	
	public int addQuestion(QuestionVo vo) {
		return template.insert("question.addQuestion", vo);
	}
	
	public int addAttach(QuestionFileVo vo) {
		return template.insert("question.addAttach", vo);
	}
	
	public List<QuestionVo> getQuestionByReceiver(Map<String,Object> map) {
		return template.selectList("question.getQuestionByReceiver", map);
	}

	public List<QuestionFileVo> getQuestionFileByParent(int no) {
		return template.selectList("question.getQuestionFileByParent", no);
	}
	
	public QuestionVo getQuestionByNo(int no) {
		return template.selectOne("question.getQuestionByNo", no);
	}
	
	
	
}
