<%--
  Created by IntelliJ IDEA.
  User: Nancy
  Date: 2023/7/31
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<c:set var="manager" value="${requestScope.manager}"></c:set>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="${path}/static/manage/css/css.css"/>
    <script type="text/javascript" src="${path}/static/manage/js/jquery.min.js"></script>
    <title>Title</title>
</head>
<body>
<div id="pageAll">
    <div class="pageTop">
        <div class="page">
            <img src="${path}/static/manage/img/coin02.png"/><span>管理员管理&nbsp;-</span>&nbsp;修改管理员
        </div>
    </div>
    <div class="page ">
        <!-- 会员注册页面样式 -->
        <div class="banneradd bor">
            <div class="baTopNo">
                <span>管理员注册</span>
            </div>
            <div class="baBody">
                <form action="${path}/manage/manager/update" method="post">
                    <input type="text" id="id" name="id" value="${manager.id}" hidden>
                    <div class="bbD">
                        &nbsp;&nbsp;&nbsp;用户名：<input type="text" id="username" name="username" class="input3" value="${manager.username}"/>
                    </div>
                    <div class="bbD">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密码：<input type="password" id="password" name="password" class="input3" value="${manager.password}"/>
                    </div>
                    <div class="bbD">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;昵称：<input type="text" id="name" name="name" class="input3" value="${manager.name}"/>
                    </div>
                    <div class="bbD">
                        <p class="bbDP">
                            <input class="btn_ok btn_yes" type="submit" value="提交">
                            <a class="btn_ok btn_no" href="${path}/manage/manager/list">取消</a>
                        </p>
                    </div>
                </form>
            </div>
        </div>

        <!-- 会员注册页面样式end -->
    </div>
</div>
</body>
</html>
