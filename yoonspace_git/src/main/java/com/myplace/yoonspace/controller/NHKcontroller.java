package com.myplace.yoonspace.controller;

import java.util.List;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myplace.yoonspace.service.NHKService;
import com.myplace.yoonspace.vo.NHKarticle;

@Controller
public class NHKcontroller {

	
	@Autowired
	NHKService service;
	

	@RequestMapping("nhkstudy")
	public String to_nhkstudy() {
		return "redirect:getArticleList";
	}
	
	@RequestMapping("newpost")
	public String to_newpost() {
		return "nhk/newpost";
	}
	
	@RequestMapping("addArticle")
	public String addArticle(String newsURL) {
		service.addArticle(newsURL);
		
		return "redirect:getArticleList";
	}
	
	@RequestMapping("getArticleList")
	public String getArticleList(Model model) {
		List<NHKarticle> arcList = service.getArticleList();
		model.addAttribute("arcList", arcList);
		return "nhk/main";
	}
	
	@RequestMapping("articleDetail")
	public String articleDetail(int arcno, Model model) {
		NHKarticle article = service.getOneArticle(arcno);
		model.addAttribute("article", article);
		return "nhk/newsdetail";
	}
	
	@RequestMapping(value="updateArticle", method=RequestMethod.POST)
	public String updateArticle(NHKarticle article){
		service.updateArticle(article);
		return "redirect:articleDetail?arcno="+article.getArcno();
	}
}
