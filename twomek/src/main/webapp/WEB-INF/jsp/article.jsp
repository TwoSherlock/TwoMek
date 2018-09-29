<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>TwoSherlock's Blog Home</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath }/plug/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="${pageContext.request.contextPath }/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath }/css/offcanvas.css" rel="stylesheet">
  </head>

  <body>
    <nav class="navbar navbar-fixed-top navbar-inverse">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand"  href="javascript:void(0)" onclick="colorAgg()">TwoSherlock's Blog</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="${pageContext.request.contextPath }/home/homeList.do">主页</a></li>
            <li <c:if test="${article.type=='b'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/home/blog.do">博文</a></li>
            <li <c:if test="${article.type=='t'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/home/talk.do">杂谈</a></li>
            <li><a href="${pageContext.request.contextPath }/home/about.do">关于</a></li>
          </ul>
        </div><!-- /.nav-collapse -->
      </div><!-- /.container -->
    </nav><!-- /.navbar -->

    <div class="container">

      <div class="row row-offcanvas row-offcanvas-right">

        <div class="col-xs-12 col-sm-9">
          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
          </p>
          <div class="jumbotron">
            <h1>${article.title}</h1>
            <p><fmt:formatDate value="${article.updatetime }" pattern="yyyy-MM-dd"/></p>
            <p>${article.context}</p>
          </div>
          <jsp:include page="../../article/${article.tid}.jsp"></jsp:include>
        </div><!--/.col-xs-12.col-sm-9-->

        <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
         <div class="list-group">
            <a href="tencent://AddContact/?fromId=45&fromSubId=1&subcmd=all&uin=923703513&website=www.oicqzone.com" class="list-group-item">联系QQ：923703513</a>
          </div>
        </div><!--/.sidebar-offcanvas-->
      </div><!--/row-->

      <hr>

      <footer>
        <p>&copy; 2016 Company, Inc.</p>
      </footer>

    </div><!--/.container-->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${pageContext.request.contextPath }/plug/jquery-1.12.4.min.js"></script>
    <script>window.jQuery || document.write('<script src="${pageContext.request.contextPath }/plug/jquery-1.12.4.min.js"><\/script>')</script>
    <script src="${pageContext.request.contextPath }/plug/bootstrap-3.3.7-dist/js/bootstrap.min.js""></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="${pageContext.request.contextPath }/js/ie10-viewport-bug-workaround.js"></script>
    <script src="${pageContext.request.contextPath }/js/offcanvas.js"></script>
  </body>
  <script type="text/javascript" src="${pageContext.request.contextPath }/plug/layer/layer.js"></script>
    <script type="text/javascript">
  		function colorAgg(){
  			layer.msg("点多少次都没用啦╮(╯▽╰)╭");
  		}
  </script>
</html>
