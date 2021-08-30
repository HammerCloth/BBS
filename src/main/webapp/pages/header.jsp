<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    //   项目根
    String path = request.getContextPath();
    System.out.println(path);
    // 服务器根目录
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
//    request.setAttribute("path", path);
//    request.setAttribute("basePath", basePath);
%>
<html>
<head>
    <base href="<%=basePath%>">
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
            <li class="dropdown">
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
    <c:if test="${empty sessionScope.username&& empty sessionScope.adminname}">
        <ul class="nav navbar-nav navbar-right user">
            <li><a href="login.jsp">登录</a></li>
            <li><a href="regist.jsp">注册</a></li>
        </ul>
        <p class="navbar-text navbar-right">尊敬的游客你好！</p>
    </c:if>
    <c:if test="${!empty sessionScope.username&& empty sessionScope.adminname}">
        <ul class="nav navbar-nav navbar-right user">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        ${sessionScope.username}<b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="pages/change-info.jsp">设置</a></li>
                        <%--                    todo 分页--%>
                    <li><a href="pages/mypost.jsp?page=1">我的帖子</a></li>
                    <li><a href="publish_post.jsp">我要发贴</a></li>
                    <li class="divider"></li>
                        <%--                    todo 这里应该是类似于servlet之类的--%>
                    <li><a href="logout.action"></a>退出登录</li>
                </ul>
            </li>
        </ul>
        <p class="navbar-text navbar-right">尊敬的用户你好！</p>
    </c:if>
    <c:if test="${empty sessionScope.username&& !empty sessionScope.adminname}">
        <ul class="nav navbar-nav navbar-right user">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        ${sessionScope.adminname}<b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="manage/notice.jsp">发布公告</a></li>
                    <li><a href="manage/change-admin.jsp">资料修改</a></li>
                    <li><a href="manage/newpost.jsp">查看新帖</a></li>
                    <li><a href="manage/bestpost.jsp">精华帖请求</a></li>
                    <li><a href="manage/limit.jsp">封锁用户</a></li>
                    <li><a href="manage/create_discuss.jsp">创建讨论区</a></li>
                    <li class="divider"></li>
                        <%--                    todo servlet--%>
                    <li><a href="logout.action" %>">退出登陆</a></li>
                </ul>
            </li>
        </ul>
        <p class="navbar-text navbar-right">尊敬的管理员你好！</p>
    </c:if>
    <%--    todo servlet--%>
    <form class="navbar-form navbar-right" role="search" action="search.action">
        <div class="input-group">
            <input type="text" class="form-control" name="keywords" placeholder="search">
            <span class="input-group-addon"><span class="glyphicon glyphicon-search"></span> </span>
        </div>
    </form>
</nav>
</body>
</html>
