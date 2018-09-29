package com.msp.mapper;

import java.util.List;
import com.msp.pojo.Article;

public interface ArticleMapper {
		public List<Article> homeList();

		public List<Article> getBlog();

		public List<Article> getTalk();

		public Article getArticle(String tid);
}