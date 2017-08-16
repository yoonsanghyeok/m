package com.myplace.yoonspace.dao;

import java.util.List;
import java.util.Map;

import com.myplace.yoonspace.vo.NHKarticle;

public interface NHKDao {

	int addArticle(Map<String, String> newsData);

	List<NHKarticle> getArticleList();

	NHKarticle getOneArticle(int arcno);

	int updateArticle(NHKarticle article);

	
}
