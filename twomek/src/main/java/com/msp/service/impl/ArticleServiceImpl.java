package com.msp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.msp.mapper.ArticleMapper;
import com.msp.pojo.Article;
import com.msp.service.ArticleService;
@Service("articleService")
public class ArticleServiceImpl implements ArticleService {
	@Autowired
	private ArticleMapper articleMapper;

	@Override
	public List<Article> homeList() {
		List<Article> homeList = articleMapper.homeList();
		if(homeList.size()>6){//大于6就截取6个
			List<Article> subList = homeList.subList(0, 6);
			return subList;
		}else{//不大于6就全部返回，不然截取时下标会越界
			return homeList;
		}
		
		
	}

	@Override
	public List<Article> getBlog() {
		List<Article> blogList = articleMapper.getBlog();
		return blogList;
	}

	@Override
	public List<Article> getTalk() {
		List<Article> talkList = articleMapper.getTalk();
		return talkList;
	}

	@Override
	public Article getArticle(String tid) {
		Article article = articleMapper.getArticle(tid);
		return article;
	}

}
