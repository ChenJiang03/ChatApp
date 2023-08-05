<%--
  Created by IntelliJ IDEA.
  User: Nancy
  Date: 2023/7/31
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<c:set var="friend" value="${sessionScope.manager}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>头部</title>
    <link rel="stylesheet" type="text/css" href="${path}/static/manage/css/public.css" />
    <script type="text/javascript" src="${path}/static/manage/js/jquery.min.js"></script>
    <script type="text/javascript" src="${path}/static/manage/js/public.js"></script>
</head>

<body>
<!-- 头部 -->
<div class="head">
    <div class="headL">
        <img class="headLogo" src="${path}/static/web/images/logo.png" style="width: 190px"/>
    </div>
    <div class="headR">
        <span style="color:#FFF">欢迎：${friend.name}</span> <a href="head2.html" rel="external">【退出】</a>
    </div>
</div>
</body>
</html>
