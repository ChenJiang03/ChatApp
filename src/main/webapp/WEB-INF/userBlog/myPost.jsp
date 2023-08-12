<%--
  Created by IntelliJ IDEA.
  User: Nancy
  Date: 2023/8/5
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<c:set var="blogList" value="${requestScope.blogList}"></c:set>
<c:set var="blogPicMap" value="${requestScope.blogPicMap}"></c:set>
<!DOCTYPE html>
<html lang="cn" dir="ltr" class="no-js">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="maximum-scale=1.0,width=device-width,initial-scale=1.0,user-scalable=no">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>朋友圈</title>
    <link href="${path}/static/blog/assets/css/bootstrap.min.css" rel="stylesheet"/>
    <link title="style2" href="${path}/static/blog/assets/css/style.css" rel="stylesheet"/>
    <link href="${path}/static/blog/assets/css/nprogress.css" rel="stylesheet"/>
    <link rel="stylesheet" href="${path}/static/blog/assets/css/nivo-slider.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="${path}/static/blog/assets/css/default.css" type="text/css" media="screen"/>
    <script src="${path}/static/blog/assets/js/jquery.min.js"></script>
    <script src="${path}/static/blog/assets/js/jquery.nivo.slider.pack.js"></script>
    <script src="${path}/static/blog/assets/js/nprogress.js"></script>
</head>

<body>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">
              Toggle navigation
            </span>
                <span class="icon-bar">
            </span>
                <span class="icon-bar">
            </span>
                <span class="icon-bar">
            </span>
            </button>
            <a class="navbar-brand" href="index.html">
                <img src="${path}/static/blog/assets/img/logo.png" class="logo"/>
            </a>
        </div>
        <div class="collapse navbar-collapse " id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav header-menu">

                <li>
                    <a href="${path}/userCenter/contacts">
                        <img src="${path}/static/blog/assets/img/homeLogo.jpg" alt="" style="width: 35px">首页
                    </a>
                </li>
                <li>
                    <a href="${path}/userBlog/myPost">
                        <img src="${path}/static/blog/assets/img/myLogo.jpeg" alt="" style="width: 35px">我的发布
                    </a>
                </li>
                <li>
                    <a href="blog.html">
                        <img src="${path}/static/blog/assets/img/settingLogo.jpg" alt="" style="width: 35px">设置
                    </a>
                </li>
                <li>
                    <a href="${path}/userBlog/blogs">
                        <img src="${path}/static/blog/assets/img/blogLogo.png" alt="" style="width: 35px">朋友圈
                    </a>
                </li>
                <li>
                    <a href="${path}/userBlog/post">
                        <img src="${path}/static/blog/assets/img/postBlog.jpeg" alt="" style="width: 35px">发布朋友圈
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="leftbar">
    <!-- 左菜单 -->
    <div class="left_menu">
        <ul class="menu_link">
            <li>

                <a href="" class="simptip-position-right simptip-smooth simptip-movable"
                   data-toggle="tooltip" data-placement="right" title="登陆">
                    <img src="${path}/static/blog/assets/img/login.png">
                    <span>
                自定义链接
              </span>
                    <div class="clearfix">
                    </div>
                </a>
            </li>
        </ul>
    </div>
</div>
<!--Start banner img-->
<div class="container-filed" id="banner_container">
    <div class="row">
        <div class="col-md-12">
            <div class="slider-wrapper theme-default">
                <div id="slider" class="nivoSlider">
                    <img src="${path}/static/blog/assets/img/owl.jpg" data-thumb="assets/img/owl.jpg" alt=""/>
                    <a href="${path}/static/blog/assets/img/owl2.jpg"><img src="${path}/static/blog/assets/img/owl2.jpg"
                                                                           alt=""/></a>
                    <img src="${path}/static/blog/assets/img/owl.jpg" data-thumb="assets/img/owl.jpg" alt=""/>
                    <img src="${path}/static/blog/assets/img/owl2.jpg" data-thumb="assets/img/owl2.jpg" alt=""/>

                </div>
            </div>
        </div>
    </div>
</div>
<!--End banner img-->
<div class="container-fluid main-container" id="main-container">
    <div class="row">
        <div class="col-md-12 top-title">
            <h2 class="page-title">
                我的朋友圈
            </h2>
        </div>
    </div>
    <c:forEach items="${blogList}" var="blog">
        <div class="row">
            <div class="col-md-12 post-container">
                <h2 class="post-title">
                    <img src="${path}/static/uploadImages/${blog.user.picture}" alt="" style="border-radius: 50%; width: 60px">
                    <a href="" title="">${blog.user.name}</a>
                </h2>
                <div class="meta-box">
                    <span class="m-post-date">
                        <i class="fa fa-calendar-o"></i>
                        <fmt:formatDate value="${blog.inputTime}" pattern="yyyy-MM-dd HH:hmm"/>
                    </span>
                    <span class="comments-link">
                        <a href="" class="ds-thread-count" data-thread-key="9500" title="Comment on 毕业两周年">
                            <i class="fa fa-comments-o"></i>
                            <img src="${path}/static/blog/assets/img/${blog.visibilityPicture}" alt="" style="width: 30px">
                            <c:if test="${blog.visibility eq 0}">
                                私密
                            </c:if>
                            <c:if test="${blog.visibility eq 1}">
                                所有人可见
                            </c:if>
                            <c:if test="${blog.visibility eq 2}">
                                部分人可见
                            </c:if>
                            <c:if test="${blog.visibility eq 3}">
                                部分人不可见
                            </c:if>
                        </a>
                    </span>
                </div>
                <div class="post-picture" style="width: 350px">
                    <c:forEach var="blogPic" items="${blogPicMap[blog.id.toString()]}">
                        <a href="${path}/static/uploadImages/${blogPic.picture}" data-lightbox="image-group">
                            <img src="${path}/static/uploadImages/${blogPic.picture}" style="width: 100px; height: 100px" alt="">
                        </a>
                    </c:forEach>
                </div>
                <div class="post-content">
                    ${blog.content}
                </div>

                <div class="post-comment" style="background-color: #d7d8da; width: 85%">
                    <p>评论：</p>
                    <textarea name="comment" id="comment" cols="50" rows="1" style="margin-left: 20px"></textarea>
                    <button id="commentToBlogBtn" data-id="${blog.id}">发送</button>
                </div>
            </div>
        </div>
    </c:forEach>

    <!--分页进入第二页，一页多少可分配-->
    <div class="row post-pagination">
        <div class="col-md-12">
            <p>
                <a href="" class="btn btn-primary btn-sm">
                    <span> 浏览之前的文章</span>
                </a>
            </p>
        </div>
    </div>
    <!--评论内容-->
    <div class="row page-comments-container">
        <div class="col-md-12">
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
        </div>
    </div>
    <footer>
        <!--版权信息-->
        <div class="copyright">
            Copyright Ybsat ©2020 All rights reserved &nbsp;&nbsp;
            <a href="www.ybsat.com">
                Theme leaves by Ybsat
            </a>
        </div>
    </footer>
</div>
<script src="${path}/static/blog/assets/js/bootstrap.min.js"></script>
<script>
    /*banner 初始化*/
    $(window).load(function () {
        $('#slider').nivoSlider({
            effect: 'random',        // 过渡效果
            controlNav: false,       // 是否显示图片导航控制按钮（,2,3... ）
            pauseOnHover: true,      // 鼠标县浮时是否停止动画
            manualAdvance: false,    // 是否手动切换
            animSpeed: 100,          // 图片过渡时间
            pauseTime: 2000,         // 图片显示时间
            pauseOnHover: false,
            manualAdvance: false,
        });
    });
    $(document).ready(function () {
        $('body').show();
        $('.version').text(NProgress.version);
        NProgress.start();
        setTimeout(function () {
            NProgress.done();
            $('.fade').removeClass('out');
        }, 1000);
        var style2 = $(".style2")
        style2.click(function () {

        })
    })

//    lightbox实现预览图片功能
    lightbox.option({
        'resizeDuration': 200,
        'wrapAround': true
    });

</script>
<script type="text/javascript">
    $("#commentToBlogBtn").click(function (){
        var blogId = this.data("id");
        var content = $("#comment").val();
        $.get("${path}/userBlog/postCommentToBlog", {blogId: blogId, content: content},
        function (data){

        });
    });
</script>
</body>

</html>
