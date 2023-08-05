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
<c:set var="friend" value="${requestScope.user}"></c:set>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="${path}/static/manage/css/css.css"/>
    <script type="text/javascript" src="${path}/static/manage/js/jquery.min.js"></script>
    <title>Title</title>
</head>
<style type="text/css">
    .user-btn
    {
        margin-right: 10px;
        width: 160px;
        height: 40px;
        background-color: lightseagreen;
        border: transparent;
        color: white;
    }
</style>
<body>
<div id="pageAll">
    <div class="pageTop">
        <div class="page">
            <img src="${path}/static/manage/img/coin02.png"/><span>用户管理&nbsp;-</span>&nbsp;查看用户信息
        </div>
    </div>
    <div class="page ">
        <!-- 会员注册页面样式 -->
        <div class="banneradd bor">
            <div class="baTopNo">
                <span>用户详情</span>
            </div>
            <div class="baBody">

                <input type="text" id="id" name="id" value="${friend.id}" hidden>
                <div class="bbD">
                    用户名：${friend.username}
                </div>
                <div class="bbD">
                    昵称：${friend.name}
                </div>
                <div class="bbD">
                    手机号：${friend.phone}
                </div>
                <div class="bbD">
                    邮箱：${friend.email}
                </div>
                <div class="bbD">
                    注册时间：${friend.inputTime}
                </div>
                <div class="bbD">
                    用户个性签名：${friend.signature}
                </div>
                <div class="bbD">
                    用户好友数量：${friend.friendNum}
                </div>
                <div class="bbD">
                    用户朋友圈数量：${friend.blogNum}
                </div>
                <div class="bbD">
                    上次登录时间：${friend.lastLoginTime}
                </div>
                <div class="bbD">
                    上次登录IP：${friend.lastLoginIp}
                </div>
                <div class="bbD">
                    登陆次数：${friend.loginNum}
                </div>
                <div class="bbD">
                        <input class="user-btn" onclick="history.go(-1)" value="返回" type="button">
                        <input class="user-btn" value="查看用户好友列表" type="button">
                        <input class="user-btn" value="查看用户朋友圈列表" type="button">

                </div>

            </div>
        </div>

        <!-- 会员注册页面样式end -->
    </div>
</div>
</body>
</html>
