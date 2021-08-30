<%--
  Created by IntelliJ IDEA.
  User: sun
  Date: 2021/8/30
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html long="zh" class="no-js">
<head>
    <%
        //   项目根
        String path = request.getContextPath();
        System.out.println(path);
        // 服务器根目录
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
//    request.setAttribute("path", path);
//    request.setAttribute("basePath", basePath);
    %>
    <base href="<%=basePath%>">
    <title>BBSindex</title>
    <link rel="stylesheet" type="text/css" href="css/zzsc-demo.css">
    <link href="css/index.css" rel="stylesheet">
</head>
<body>
<jsp:include page="pages/header.jsp"/>
<div style="width: 100%;">
    <div class="container user-info">
        <div class="row">
            <div class="col-xs-12">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="img/2.jpg" alt="...">
                            <div class="carousel-caption">
                            </div>
                        </div>
                        <div class="item">
                            <img src="img/1.jpg" alt="...">
                            <div class="carousel-caption">
                            </div>
                        </div>
                        <div class="item">
                            <img src="img/2.jpg" alt="...">
                            <div class="carousel-caption">
                            </div>
                        </div>
                    </div>
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="container" style="margin-top: 30px;">
            <div class="row">
                <div class="col-md-9">
                    <ul class="list-group">
                        <div class="list-group-item active">
                            论坛新帖
<%--                            todo 这边有一个servlet没有写--%>
                            <a href="more.action?type=-1&&page=1" style="float: right;color: white">
                                更多
                            </a>
<%--                            todo 后面有复杂的逻辑还没有来的及写--%>
                        </div>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
this is index?
</body>
</html>
