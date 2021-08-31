<%--
  Created by IntelliJ IDEA.
  User: sun
  Date: 2021/8/27
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>"/>
    <title>注册界面</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/regist.css" rel="stylesheet">
</head>
<body>
<jsp:include page="pages/header.jsp"/>
<div class="regist">
<%--    todo servlet--%>
    <form id="form1" role="form" action="register" method="post">
        <!--<label for="name">用户名:</label>-->
        <input id="username" type="text" class="form-control" name="username" style="height: 40px; margin-top: 20px;"
               placeholder="请输入用户名">
        <!--<label for="name"></label>-->
        <input id="password" type="password" class="form-control" name="password" style="height: 40px;margin-top: 20px;"
               placeholder="请输入密码">
        <input id="confirm_password" type="password" class="form-control" name="confirm_password"
               style="height: 40px;margin-top: 20px;"
               placeholder="请重复密码">

        <div style="margin-top: 10px;margin-left: 10px;">
            <div style="float: left;margin-bottom: 10px">性别:</div>
            <div style="float:left;margin-left: 100px;margin-bottom: 10px">
                男<input type="radio" name="sex" value="man">
            </div>
            <div style="float: right;margin-right: 100px;margin-bottom: 10px">
                女<input type="radio" name="sex" value="woman">
            </div>
        </div>
        <input id="email" type="email" class="form-control" name="email" style="height: 40px;margin-top: 20px;"
               placeholder="请输入邮箱">
        <div style="height: 80px;width: 100%;margin-top: 20px;margin-left: 30px;">
            <!--<div style="float:left;width: 100%;padding: 20px;">-->
            <input type="submit" class="btn btn-primary" value="注册"
                   style="margin:auto;width: 80%;height: 40px;padding: 10px;"></input>
            <!--</div>-->


        </div>

    </form>


</div>
</body>
</html>
