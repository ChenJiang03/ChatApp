<%--
  Created by IntelliJ IDEA.
  User: Nancy
  Date: 2023/7/31
  Time: 11:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<c:set var="friend" value="${sessionScope.manager}"></c:set>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title></title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <meta name="generator" content=""/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
    <link href="${path}/static/manage/css/haiersoft.css" rel="stylesheet" type="text/css" media="screen,print"/>
    <link href="${path}/static/manage/css/print.css" rel="stylesheet" type="text/css" media="print"/>
    <script src="${path}/static/manage/js/jquery-1.10.1.min.js"></script>
    <script src="${path}/static/manage/js/side.js" type="text/javascript"></script>

    <!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->
</head>

<body>
<!-- wrap_left -->

<!-- /wrap_left -->

<!-- picBox -->
<div class="picBox" onClick="switchSysBar()" id="switchPoint"></div>
<!-- /picBox -->


<!-- wrap_right -->
<div class="wrap_right">
    <header>
        <!-- Header -->

        <!-- /Header -->
    </header>


    <!-- Contents -->
    <div id="Contents">

        <!-- MainForm -->
        <div id="MainForm">
            <div class="form_boxB">
                <h2>${friend.name}，欢迎来到畅聊APP后台管理系统</h2>
                <p class="msg">点击左侧选择您要管理的内容</p>
            </div>
        </div>
        <!-- /MainForm -->
        <div id="1" style="margin: 0 auto; width: 400px">
            <img style="width: 100%; height: 100%" src="${path}/static/web/images/logo_transparent.png" alt="">
        </div>


        <footer>
            <address>@所有版权归于畅聊APP</address>
        </footer>
        <!-- /footer -->

    </div>
</div>
<!-- /wrap_right -->
</body>
</html>
<style type="text/css">
    @media screen and (max-width:1000px) and (min-width:750px){
        #1{
            width: 300px;

        }
    }
    @media screen and (max-width:750px) and (min-width:500px){
        #1{
            width: 200px;

        }
    }
    @media screen and (max-width:500px){
        #1{
            width:100px;

        }
    }
</style>
