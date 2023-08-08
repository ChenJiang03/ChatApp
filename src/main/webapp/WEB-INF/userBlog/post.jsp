<%--
  Created by IntelliJ IDEA.
  User: Nancy
  Date: 2023/8/7
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="cn" dir="ltr" class="no-js">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="maximum-scale=1.0,width=device-width,initial-scale=1.0,user-scalable=no">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>发布朋友圈</title>
    <link href="${path}/static/blog/assets/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${path}/static/blog/assets/css/style.css" rel="stylesheet"/>
    <link href="${path}/static/blog/assets/css/nprogress.css" rel="stylesheet"/>
    <link rel="stylesheet" href="${path}/static/blog/assets/css/nivo-slider.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="${path}/static/blog/assets/css/default.css" type="text/css" media="screen"/>
    <script type="text/javascript" charset="utf-8" src="${path}/static/web/vendor/jquery/jquery-3.6.4.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="${path}/static/blog/assets/ueditor/lang/zh-cn/zh-cn.js"></script>
    <script type="text/javascript" charset="utf-8" src="${path}/static/blog/assets/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="${path}/static/blog/assets/ueditor/ueditor.all.js"></script>
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
                    <a href="index.html">
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
<div class="container-fluid main-container contact" id="main-container">
    <div class="row top-title">
        <div class="col-md-12">
            <h1 class="page-title">
                发布朋友圈
            </h1>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12 post-container">
            <div class="post-content">
                <form method="post" action="${path}/userBlog/post" id="form1" class="contact-form" enctype="multipart/form-data">

                    <div>
                        朋友圈可见范围：<br/>
                        <select name="viewScope" id="viewScope">
                            <option value="1">所有人可见</option>
                            <option value="0">私密</option>
                            <option value="2">部分人可见</option>
                            <option value="3">部分人不可见</option>
                        </select>
                    </div>
                    <div>
                        上传图片（最多上传9张图片）：<br/>
                        <input type="file" id="uploadImage" value="点击上传图片">
                    </div>
                    <div id="uploadedImages" style="display: flex">

                    </div>
                    <div>
                        <textarea id="content" name="content"></textarea>
                    </div>
                    <div>
                        <button id="submitBtn">提交</button>
                    </div>
                </form>
            </div>
            <div class="meta-box">
            </div>
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
<%--页面右边图片滑动的JS--%>
<%--UEditor的JS--%>
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
    });

    //修改UEditor的宽度和高度，以及修改工具栏上的工具类型
    var args={
        initialFrameHeight:200,
        initialFrameWidth:740,
        toolbars:[
            ['indent','undo','redo','bold','italic','underline','strikethrough','subscript',
                'superscript','formatmatch','pasteplain','selectall','fontfamily','fontsize',
                'forecolor','backcolor'
            ]
        ]
    };
    //显示UEditor
    $(function(){
        UE.getEditor("content",args);
    });

</script>
<%--上传图片的JS--%>
<script>
    var imageList = {};
    var index = 0;
    $("#uploadImage").change(function (){
        var image = this.files[0];
        if (Object.keys(imageList).length < 9)
        {
            //给imageList赋键值对
            imageList[index] = image;
            console.log(imageList);
            alert("上传成功！");

            //新建一个外层DIV，负责将图片元素以及a标签删除元素包含进去
            var newAddDiv = $("<div>");
            newAddDiv.css({"width":"80px","height":"100px"});

            //新建一个图片元素，将图片的src赋给图片，以及将图片添加到DIV里面
            var newAdd = $("<img>");
            newAdd.attr("src", URL.createObjectURL(image)+"");
            newAdd.css({"width":"80px","height":"80px"});
            newAddDiv.append(newAdd);

            //新建一个a标签，负责删除，将a标签添加到div里面
            var newDelete = $("<a>删除</a>");
            newDelete.addClass("delete-a");
            newDelete.data("order",index);
            newDelete.css({"display": "flex", "justify-content": "center", "align-items": "center"});
            newAddDiv.append(newDelete);

            //将整个div放到外层div里面
            $("#uploadedImages").append(newAddDiv);
            index++;
        }
        else
        {
            alert("请不要上传超过9张图片！");
        }
    });

    $(document).on("click",".delete-a",function (){
        console.log(this);
        var index = $(this).data("order");
        console.log($(this).data("order"));
        $(this).parent("div").remove();
        delete imageList[index];
        console.log(imageList);
    });

    $("#submitBtn").click(function (){
        $("#form1").submit();
    });

</script>


</body>

</html>