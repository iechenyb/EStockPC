<%@ page language="java" contentType="text/html; charset=gbk" pageEncoding="gbk"%>
<%  
String path=application.getRealPath(request.getRequestURI());
String basePath = "http://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()+"/";  
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  ng-app="app">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<input type="hidden" id="meta" value=<%=request.getContextPath()%>/>
<title>股往金来-${code}</title>
<link rel="icon" href="<%=basePath%>img/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="<%=basePath%>img/favicon.ico" type="image/x-icon">
<%-- <input type="hidden" name='code' id ='code' value='${code}'/> --%>
<input type="hidden" name='code' id ='code' value='<%=request.getParameter("code")%>'/> 
</head>
<body ng-controller="controller" style="background-color:black;">
      <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
      <center>
      <div id="main" style="height:750px;" class="am-u-sm-12"></div>
      </center>
      <script src="<%=basePath%>js/jquery.min.js"></script>
      <script src="<%=basePath%>js/jquery.js"></script>
      <script src="<%=basePath%>angular/angular-1.0.1.min.js"></script>
      <script src="<%=basePath%>echarts/echarts-all.js"></script>
      <script src="<%=basePath%>phone/js/k.js"></script>
      <script src="<%=basePath%>js/tongji.js?version=Math.random()"></script>  
</body>
</html>