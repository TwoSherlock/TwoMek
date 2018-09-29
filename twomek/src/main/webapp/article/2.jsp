<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<p>&nbsp;&nbsp; 我们知道，本机的ip通常都是子网划分后的ip，通过WebService接口并不能找到这种ip的信息，所以要想办法得到公网ip</p>
<p>&nbsp;&nbsp; &nbsp;&nbsp;<b>大致思路：</b>在<a target="blank" href="http://ip.chinaz.com">http://ip.chinaz.com</a>(ip查询网站)可以看到你的ip地址和地区,我们就可以想办法去这个网站取到本机的公网ip地址。当然，前提是需要本机连接网络。</p>
<p>主要用到的核心类：java.net.URL，java.net.URLConnection   API介绍如下：</p><br>
<img style="width:600px;height:200px" src="${pageContext.request.contextPath }/img/2_1.png"/><br><br>
<img style="width:400px;height:80px" src="${pageContext.request.contextPath }/img/2_2.png"/><br><br>
<p><b>下面是获取ip地址类</b><l>IpAddressGet.java</l><b>的代码：(可以运行)</b></p>
<pre>
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class IpAddressGet {
	public static String getOuterIp() throws Exception{
		String ipAddress = "";//存放ip
		URL url = new URL("http://ip.chinaz.com");//ip查询网站
		
		//建立连接
		URLConnection urlConnection = url.openConnection();
		//建立输入流
		InputStream is = urlConnection.getInputStream();
		//转换成字符流
		InputStreamReader isr = new InputStreamReader(is, "UTF-8");
		//利用缓冲流来读取网页内容
		BufferedReader br = new BufferedReader(isr);
		
		String str = null;
		StringBuffer sb = new StringBuffer();
		
		while((str = br.readLine())!=null){//按行读取，有内容的行就装到StringBuffer中
			sb.append(str);
		}
		
		
		//返回结果中有：&lt;dd class="fz24"&gt;222.88.236.166&lt;/dd&gt;显示了公网ip地址
		//用正则表达式匹配指定HTML标签
	        //  正则式含义：&lt;dd class = "fz24"&gt;(捕获组)&lt;/dd&gt;
		Pattern pattern = Pattern.compile("\\&lt;dd class\\=\"fz24\"&gt;(.*?)\\&lt;\\/dd&gt;");
		Matcher matcher = pattern.matcher(sb.toString());//
		if(matcher.find()){//如果匹配成功
			ipAddress = matcher.group(1);//获得捕获组
		}
		//关闭流
		if(is!=null){
			is.close();
		}
		return ipAddress;
	}

}
</pre>
<p>测试，成功获取到公网ip地址。</p>












