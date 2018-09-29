<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<p>我用的jQuery的ajax，开始的时候用的是type、url、data、success四个属性，代码如下：</p>
<pre>
         $.ajax({
  				type:"get",
  				url:"http://ip.chinaz.com/getip.aspx",
  				success:function(msg){
  					var add = msg.address;
  					$.ajax({
  						type:"post",
  						url:"home/getWeather.do",
  						data:{"add":""+add+""},
  						success:function(res){
  							$("#weatherInfo").append(res);
  						}
  					});
  				}
  			});
</pre>
<p>然而，测试的时候发现控制台报错如下：<br></p><p><br></p><p><br></p>
<img src="${pageContext.request.contextPath }/img/3_1.png" style="width:700px;"/>
<p>网上查找资料发现，原来这涉及到了ajax的跨域问题。<br></p>
<h4>ajax的跨域问题：</h4>
<p>跨域问题来源于JavaScript的同源策略，即只有 协议+主机名+端口号 (如存在)相同，则允许相互访问。也就是说JavaScript只能访问和操作自己域下的资源，不能访问和操作其他域下的资源。跨域问题是针对JS和ajax的，html本身没有跨域问题。</p><p style="white-space: normal;">jQuery解决ajax的方法：</p><p style="white-space: normal;">其实解决方法很简单，只需要在jQuery的属性中添加一个属性：</p>
<code>dataType: "jsonp"</code>
<p>当然，使用这个属性，我们就得了解这个属性的作用。下面是来自w3school的文档：</p>
<img src="${pageContext.request.contextPath }/img/3_2.png" style="width:700px;height:300px"/><br><br>
<h4>jsonp:</h4>
<p>JSONP(JSON with Padding)是JSON的一种“使用模式”，可用于解决主流浏览器的跨域数据访问的问题。由于同源策略，一般来说位于 server1.example.com 的网页无法与不是 server1.example.com的服务器沟通，而 HTML 的&lt;script&gt; 元素是一个例外。利用&lt;script&gt;元素的这个开放策略，网页可以得到从其他来源动态产生的 JSON 资料，而这种使用模式就是所谓的 JSONP。用 JSONP 抓到的资料并不是 JSON，而是任意的JavaScript，用 JavaScript 直译器执行而不是用 JSON 解析器解析。</p>
<p>修改后的代码如下：</p>
<pre>
$.ajax({
  		type:"get",
  		url:"http://ip.chinaz.com/getip.aspx",
  		dataType: "jsonp",
  		success:function(msg){
  		var add = msg.address;
  		   $.ajax({
  				type:"post",
  				url:"home/getWeather.do",
  				data:{"add":""+add+""},
  				success:function(res){
  					$("#weatherInfo").append(res);
  				}
  			});
  		}
 });
</pre>
<p>再次测试后，成功显示出要取得的数据。</p>
