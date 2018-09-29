package com.msp.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.msp.pojo.Article;
import com.msp.service.ArticleService;
import com.msp.weather.fromweb.WeatherQueryFromWeb;

@Controller
@RequestMapping("home")
public class HomeController {
	
	Logger logger = Logger.getLogger(HomeController.class);
	
	@Autowired
	private ArticleService articleService;
		
	@RequestMapping("homeList")
	public String homeList(Model model){
		
		List<Article> homeList = articleService.homeList();
		model.addAttribute("homeList", homeList);
		return "home";
	}
	
	@RequestMapping("about")
	public String about(Model model){
		return "about";
	}
	
	@RequestMapping("blog")
	public String blog(Model model){
		List<Article> blogList = articleService.getBlog();
		model.addAttribute("blogList", blogList);
		return "blog";
	}
	
	@RequestMapping("talk")
	public String talk(Model model){
		List<Article> talkList = articleService.getTalk();
		model.addAttribute("talkList", talkList);
		return "talk";
	}
	
	@RequestMapping("more")
	public String more(Model model,String tid){
		Article article = articleService.getArticle(tid);
		model.addAttribute("article", article);
		return "article";
	}
	
	@RequestMapping(value="getWeather",produces={"text/html;charset=UTF-8;","application/json;"})
	public @ResponseBody String getWeather(String add){
		StringBuffer weatherInfo = new StringBuffer("");
		try {
			logger.debug("====================="+add+"======================");
			List<String> weatherList = WeatherQueryFromWeb.getWeatherByAddress(add);
			String city = weatherList.get(1);
			String temperature = weatherList.get(5);
			String weather = weatherList.get(6);
			weatherInfo.append(city+" ").append(temperature+" ").append(weather+" ");
			return weatherInfo.toString();
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e);
			return "由于网络原因，不能获取天气信息";
		}
		
	}
}
