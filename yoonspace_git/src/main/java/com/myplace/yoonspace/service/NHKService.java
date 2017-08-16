package com.myplace.yoonspace.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myplace.yoonspace.repository.NHKRepository;
import com.myplace.yoonspace.vo.NHKarticle;

@Service
public class NHKService {

	@Autowired
	NHKRepository repo;
	
	public void addArticle(String newsURL) {
		Map<String, String> newsData = new HashMap<>();
        Document doc;
		try {
			doc = Jsoup.connect(newsURL).get();
			System.out.println("url : " + newsURL);
			System.out.println("doc : " + doc);
			String date = doc.select("header.module--header time").attr("datetime");
			date = date.replace("T", " ");
			System.out.println(date);
			String title = doc.select("span.contentTitle").text();
			String summary = doc.select("div#news_textbody").html();
			String more = doc.select("div#news_textmore").html();
			String add = doc.select("div.news_add").html();
			String jdate = doc.select("span#news_date").text()+" "+doc.select("span#news_time").text();
			String root = "https://www3.nhk.or.jp/news/html/";
			
			String image_url = doc.select("img#news_image").attr("src");
			image_url = root + image_url.substring(3);
			String video_url = doc.select("div#news_video").text().split("\\.")[0];
			String parsedDate = date.substring(0, 4)+date.substring(5,7)+date.substring(8,10);
			video_url = root + parsedDate + "/movie/" + video_url + ".html";

			newsData.put("title", title);
			newsData.put("summary", summary);
			newsData.put("more", more);
			newsData.put("additional", add);
			newsData.put("inputdate", date);
			newsData.put("jdate", jdate);
			newsData.put("video_url", video_url);
			newsData.put("image_url", image_url);
			System.out.println(video_url);
		} catch (IOException e) {}
		repo.addArticle(newsData);
	}

	public List<NHKarticle> getArticleList() {
		return repo.getArticleList();
	}

	public NHKarticle getOneArticle(int arcno) {
		return repo.getOneArticle(arcno);
	}

	public int updateArticle(NHKarticle article) {
		return repo.updateArticle(article);
	}

}
