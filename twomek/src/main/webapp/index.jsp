<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="TwoSherlock">
    <meta name="author" content="TwoSherlock">
    <link rel="icon" href="../../favicon.ico">

    <title>TwoSherlock's Blog Start</title>

    <!-- bootstrap核心css -->
    <link href="plug/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- css -->
    <link href="css/cover.css" rel="stylesheet">
  </head>

  <body>

    <div class="site-wrapper">

      <div class="site-wrapper-inner">

        <div class="cover-container">

          <div class="masthead clearfix">
            <div class="inner">
              <h3 class="masthead-brand">TwoSherlock</h3>
              <nav>
                <ul class="nav masthead-nav">
                  <li><a id="weatherInfo" href="javascript:void(0)"></a></li>
                  <li><a href="javascript:void(0)"  onclick="CloseWebPage()">离开</a></li>
                </ul>
              </nav>
            </div>
          </div>

          <div class="inner cover">
            <h1 class="cover-heading">欢迎来到我的博客</h1>
            <p class="lead"></p>
            <p class="lead">
              <a href="home/homeList.do" class="btn btn-lg btn-default">进入</a>
            </p>
          </div>

          <div class="mastfoot">
            <div class="inner">
              <p>模版来源于 <a href="http://getbootstrap.com">Bootstrap</a>
              		<br>天气数据来源于 <a href="http://www.cma.gov.cn/">中国气象局</a>
              </p>
            </div>
          </div>

        </div>

      </div>

    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="plug/jquery-1.12.4.min.js"></script>
    <script>window.jQuery || document.write('<script src="plug/jquery-1.12.4.min.js"><\/script>')</script>
    <script src="plug/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
  </body>
  <script type="text/javascript">
  $(function(){
  			$.ajax({
  				type:"get",
  				url:"http://ip-api.com/json/?lang=zh-CN",
  				dataType: "jsonp", 
  				success:function(msg){
  					var add = msg.city;
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
  });
  			function CloseWebPage(){ 
				  window.open(' ','_self','');
				  window.close(); 
			}
  </script>
</html>
