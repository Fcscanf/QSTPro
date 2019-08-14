<%--
  Created by IntelliJ IDEA.
  User: fcsca
  Date: 2019-08-13/0013
  Time: 下午 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    pageContext.setAttribute("APP_PATH", request.getContextPath());
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>Welcome</title>
</head>
<body>
<h1>Welcome</h1>
</body>
</html>
