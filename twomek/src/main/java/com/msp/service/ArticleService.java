package com.msp.service;

import java.util.List;

import com.msp.pojo.Article;

public interface ArticleService {
	/**
	 * 主页面显示最近更新的六篇文章
	 * @return
	 */
	public List<Article> homeList();

	/**
	 * 获取所有的博文
	 * @return
	 */
	public List<Article> getBlog();

	/**
	 * 获取所有的杂谈
	 * @return
	 */
	public List<Article> getTalk();

	/**
	 * 根据tid拿到指定的文章
	 * @param tid
	 * @return
	 */
	public Article getArticle(String tid);
}
