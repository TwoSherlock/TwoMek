<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<p>在springMVC中，对于返回json数据的方法，只需要在返回值前加一个<font color="green">@ResponseBody </font>即可。</p>
<p>但是，如果返回值中有中文的话，springMVC并不能很好的处理编码格式。虽然在框架的配置文件中设置了编码格式，但对于返回json类型的方法并不生效。</p>
<p>我在网上寻找解决办法，虽然有很多种，但是有些博客所提供的方法并不能很好的解决问题？</p>
<p>最后，终于找到一种我认为很方便也很有效的方法，那就是在<font color="green">@RequestMapping</font>注解上添加：</p>
<code>@RequestMapping(value="getWeather",produces={"text/html;charset=UTF-8;","application/json;"})</code>
<p><br>这个方法很好的解决了我项目中的ajax乱码，希望能帮助到您。</p>
<p>顺便提一下，我的springMVC是4.3.9版本</p>