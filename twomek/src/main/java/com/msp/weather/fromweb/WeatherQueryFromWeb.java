package com.msp.weather.fromweb;

import java.net.InetAddress;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.List;

import javax.xml.namespace.QName;
import javax.xml.ws.Service;

import cn.com.webxml.ArrayOfString;
import cn.com.webxml.IpAddressSearchWebService;
import cn.com.webxml.IpAddressSearchWebServiceSoap;
import cn.com.webxml.WeatherWebService;
import cn.com.webxml.WeatherWebServiceSoap;

public class WeatherQueryFromWeb {
	/**
	 * 由地址查询所在城市的天气
	 * @param add 前台传过来的地址，格式为：河南省南阳市 联通
	 * @return 天气情况的list
	 * @throws Exception
	 */
	public static  List<String>getWeatherByAddress(String add) throws Exception {
		//天气ws
		URL url = new URL("http://www.webxml.com.cn/WebServices/WeatherWebService.asmx?wsdl");
		QName qName = new QName("http://WebXml.com.cn/","WeatherWebService");
		Service service = Service.create(url, qName);
		
		//获得天气查询的远程接口
		WeatherWebServiceSoap port = service.getPort(WeatherWebServiceSoap.class);
		
		//地址为河南省南阳市，截取南阳
//		int start = add.indexOf("省")+1;
//		int end = add.indexOf("市");
//		String city = add.substring(start, end);
		String city = add;
		//通过截取到的城市名获取天气信息
		ArrayOfString weatherbyCityName = port.getWeatherbyCityName(city);
		List<String> list = weatherbyCityName.getString();
		return list;
	}

}
