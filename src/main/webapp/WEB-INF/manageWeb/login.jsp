<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="${path}/static/manage/css/public.css" />
    <link rel="stylesheet" type="text/css" href="${path}/static/manage/css/page.css" />
    <script type="text/javascript" src="${path}/static/manage/js/jquery.min.js"></script>
    <script type="text/javascript" src="${path}/static/manage/js/public.js"></script>
</head>
<body>

<!-- 登录body -->
<div class="logDiv">
    <img class="logBanner" src="${path}/static/manage/img/logBanner.png" />
    <div class="logGet">
        <!-- 头部提示信息 -->
        <div class="logD logDtip">
            <p class="p1">畅聊App后台管理登录</p>
        </div>
        <form action="${path}/manageWeb/login" id="loginForm" method="post">
            <div class="lgD">
                <img class="img1" src="${path}/static/manage/img/logName.png" /><input type="text"
                                                                                       placeholder="输入用户名" name="username" id="username" />
            </div>
            <div class="lgD">
                <img class="img1" src="${path}/static/manage/img/logPwd.png" /><input type="text"
                                                                                      placeholder="输入用户密码" name="password" id="password"/>
            </div>
            <div class="logC">
                <a href="index.html" target="_self"><button onclick="submitLogin()">登 录</button></a>
            </div>
        </form>
    </div>
</div>
<!-- 登录body  end -->

<!-- 登录页面底部 -->
<div class="logFoot">
    <p class="p1">版权所有：畅聊App</p>
<%--    <p class="p2">123456789</p>--%>
    <img src="${path}/static/web/images/logo.png" alt="" style="width: 200px">
</div>
<!-- 登录页面底部end -->

</body>
</html>
<script type="text/javascript" src="${path}/static/web/vendor/jquery/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
    function submitLogin()
    {
        $("#loginForm").submit();
    }
</script>