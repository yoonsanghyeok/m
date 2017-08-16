package com.myplace.yoonspace.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myplace.yoonspace.dao.NHKDao;
import com.myplace.yoonspace.vo.NHKarticle;

@Repository
public class NHKRepository {

	@Autowired
	SqlSession sqlSession;
	
	public void addArticle(Map<String, String> newsData) {
		sqlSession.getMapper(NHKDao.class).addArticle(newsData);
	}

	public List<NHKarticle> getArticleList() {
		return sqlSession.getMapper(NHKDao.class).getArticleList();
	}

	public NHKarticle getOneArticle(int arcno) {
		return sqlSession.getMapper(NHKDao.class).getOneArticle(arcno);
	}

	public int updateArticle(NHKarticle article) {
		return sqlSession.getMapper(NHKDao.class).updateArticle(article);
	}

}
