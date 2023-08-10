<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<!-- 引入Lightbox库的样式文件 -->
<link rel="stylesheet" href="${path}/static/lightbox/lightbox.css">

<!-- 引入Lightbox库的脚本文件 -->
<script src="${path}/static/lightbox/lightbox.js"></script>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<a href="${path}/web/test?id=1&id=2">
test
</a>

<a href="${path}/static/captchaImage/Pic1.jpg" data-lightbox="image-group">
    <img src="${path}/static/captchaImage/Pic1.jpg" alt="Image" style="width: 80px">
</a>

<a href="${path}/static/captchaImage/Pic2.jpg" data-lightbox="image-group">
    <img src="${path}/static/captchaImage/Pic2.jpg" alt="Image" style="width: 80px">
</a>


</body>
</html>
<script>
    lightbox.option({
        'resizeDuration': 200,
        'wrapAround': true
    });

</script>