<%--
  Created by IntelliJ IDEA.
  User: Nancy
  Date: 2023/7/31
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>首页左侧导航</title>
    <link rel="stylesheet" type="text/css" href="${path}/static/manage/css/public.css"/>
    <script type="text/javascript" src="${path}/static/manage/js/jquery.min.js"></script>
    <script type="text/javascript" src="${path}/static/manage/js/public.js"></script>
    <head></head>

<body id="bg">
<!-- 左边节点 -->
<div class="container">

    <div class="leftsidebar_box">
        <a href="${path}/static/manage/inc/managerMain.jsp" target="main">
            <div class="line">
                <img src="${path}/static/manage/img/coin01.png"/>首页
            </div>
        </a>
        <dl class="system_log">
            <dt>
                <img class="icon1" src="${path}/static/manage/img/coin03.png"/>
                <img class="icon2" src="${path}/static/manage/img/coin04.png"/> 网站管理
                <img class="icon3" src="${path}/static/manage/img/coin19.png"/>
                <img class="icon4" src="${path}/static/manage/img/coin20.png"/>
            </dt>
            <dd>
                <img class="coin11" src="${path}/static/manage/img/coin111.png"/>
                <img class="coin22" src="${path}/static/manage/img/coin222.png"/>
                <a class="cks" href="p3.html" target="main">设置管理</a>
                <img class="icon5" src="${path}/static/manage/img/coin21.png"/>
            </dd>
        </dl>
        <dl class="system_log">
            <dt>
                <img class="icon1" src="${path}/static/manage/img/coin01.png"/>
                <img class="icon2" src="${path}/static/manage/img/coin02.png"/> 用户管理
                <img class="icon3" src="${path}/static/manage/img/coin19.png"/>
                <img class="icon4" src="${path}/static/manage/img/coin20.png"/>
            </dt>
            <dd>
                <img class="coin11" src="${path}/static/manage/img/coin111.png"/>
                <img class="coin22" src="${path}/static/manage/img/coin222.png"/>
                <a class="cks" href="${path}/manage/user/list" target="main">用户列表</a>
                <img class="icon5" src="${path}/static/manage/img/coin21.png"/>
            </dd>
            <dd>
                <img class="coin11" src="${path}/static/manage/img/coin111.png"/>
                <img class="coin22" src="${path}/static/manage/img/coin222.png"/>
                <a class="cks" href="${path}/manage/user/disabledList" target="main">用户黑名单</a>
                <img class="icon5" src="${path}/static/manage/img/coin21.png"/>
            </dd>
        </dl>
        <dl class="system_log">
            <dt>
                <img class="icon1" src="${path}/static/manage/img/coin07.png"/>
                <img class="icon2" src="${path}/static/manage/img/coin08.png"/> 朋友圈管理
                <img class="icon3" src="${path}/static/manage/img/coin19.png"/>
                <img class="icon4" src="${path}/static/manage/img/coin20.png"/>
            </dt>
            <dd>
                <img class="coin11" src="${path}/static/manage/img/coin111.png"/>
                <img class="coin22" src="${path}/static/manage/img/coin222.png"/>
                <a href="p1.html" target="main" class="cks">朋友圈列表</a>
                <img class="icon5" src="${path}/static/manage/img/coin21.png"/>
            </dd>
            <dd>
                <img class="coin11" src="${path}/static/manage/img/coin111.png"/>
                <img class="coin22" src="${path}/static/manage/img/coin222.png"/>
                <a href="p1.html" target="main" class="cks">朋友圈黑名单</a>
                <img class="icon5" src="${path}/static/manage/img/coin21.png"/>
            </dd>
        </dl>
        <dl class="system_log">
            <dt>
                <img class="icon1" src="${path}/static/manage/img/coin10.png"/>
                <img class="icon2" src="${path}/static/manage/img/coin09.png"/> 管理员管理
                <img class="icon3" src="${path}/static/manage/img/coin19.png"/>
                <img class="icon4" src="${path}/static/manage/img/coin20.png"/>
            </dt>
            <dd>
                <img class="coin11" src="${path}/static/manage/img/coin111.png"/>
                <img class="coin22" src="${path}/static/manage/img/coin222.png"/>
                <a class="cks" target="main" href="${path}/manage/manager/list">管理员列表</a>
                <img class="icon5" src="${path}/static/manage/img/coin21.png"/>
            </dd>
        </dl>

    </div>

</div>
</body>
</html>
