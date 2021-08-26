<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%
    //   项目根
    String path = request.getContextPath();
    System.out.println(path);
    // 服务器根目录
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    System.out.println(basePath);
    request.setAttribute("path",path);
    request.setAttribute("basePath",basePath);
%>
<html>
<head>
    <base href="${basePath}">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/titlebar.css" rel="stylesheet">
    <%--todo 这里可能需要修改一下路径问题，暂时用的还是相对路径 --%>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<%--导航标签--%>
<nav class="navbar navbar-inverse" role="navigation">
    <div class="navbar-header">
<%--        #表示空锚点，不做跳转刷新的超链接。--%>
        <a class="navbar-brand" href="#">BBS技术论坛</a>
    </div>
    <div>
        <ul class="nav navbar-nav">
            <li><a href="index.jsp">首页</a></li>
            <li class = "dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    精选板块 <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
<%--                    todo 这里加入一些列表--%>
                </ul>
            </li>
<%--         todo   分页--%>
            <li><a href="more.action?type=-3&&page=1">论坛热帖</a></li>
            <li><a href="more.action?type=-1&&page=1">论坛新帖</a></li>
            <li><a href="more.action?type=-2&&page=1">精华帖</a></li>
        </ul>
    </div>

</nav>

<h2>Hello World!</h2>
</body>
</html>
