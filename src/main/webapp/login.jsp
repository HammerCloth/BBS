<%--
  Created by IntelliJ IDEA.
  User: sun
  Date: 2021/8/27
  Time: 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>登录页面</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/login.css" rel="stylesheet">
</head>
<body>
<jsp:include page="pages/header.jsp"/>
<%--    todo servlet--%>
<div id="login">
    <form id="form1" role="form" action="<%=path%>/login.action" method="post">
        <input id="username" required type="text" class="form-control" name="username"
               style="height: 55px; margin-top: 30px;"
               placeholder="请输入用户名"/>
        <input type="password" required class="form-control" name="password" style="height: 55px;margin-top: 30px;"
               placeholder="请输入密码"/>
        <div style="height: 100px;width: 100%;margin-top: 30px;">
            <div style="float:left;width: 50%;padding: 20px;">
                <input type="submit" class="btn btn-primary" value="登陆"
                       style="margin:auto;width: 80%;height: 50px;padding: 13px;"/>
            </div>
            <div style="float:right;width: 50%;padding: 20px;">
                <a href="<%=path%>/regist.jsp" type="button" class="btn btn-primary"
                   style="margin:auto;width: 80%;height: 50px;padding: 13px;">注册</a>
            </div>

        </div>
    </form>
</div>

</body>
</html>
