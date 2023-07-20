<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="description" content="jQuery图像照片剪裁插件Jcrop"/>
    <meta name="description" content="张鑫旭web前端学习之jQuery"/>
    <meta name="keywords" content="张鑫旭,鑫空间-鑫生活,博客,web前端,css,JavaScript,jQuery,插件,demo页面,学习"/>
    <meta name="author" content="张鑫旭,zhangxixnu"/>
    <title>上传头像</title>
    <link rel="shortcut icon" href="http://www.zhangxinxu.com/zxx_ico.png"/>
    <link rel="stylesheet" href="${path}/static/crop/css/common.css" type="text/css"/>
    <link rel="stylesheet" href="${path}/static/crop/css/jquery.Jcrop.css" type="text/css"/>
    <script type="text/javascript" src="${path}/static/crop/js/jquery-1.3.2-min.js"></script>
    <script type="text/javascript" src="${path}/static/crop/js/jquery.Jcrop.js"></script>
    <style type="text/css">
        .crop_preview {
            position: absolute;
            left: 480px;
            top: 0;
            width: 120px;
            height: 120px;
            overflow: hidden;
            border: #0b0b0c solid 1px;
        }

        #xuwanting
        {
            width: 450px;
        }

    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            //记得放在jQuery(window).load(...)内调用，否则Jcrop无法正确初始化
            $("#xuwanting").Jcrop({
                onChange: showPreview,
                onSelect: showPreview,
                aspectRatio: 1
            });
            //简单的事件处理程序，响应自onChange,onSelect事件，按照上面的Jcrop调用
            function showPreview(coords) {
                if (parseInt(coords.w) > 0) {
                    //计算预览区域图片缩放的比例，通过计算显示区域的宽度(与高度)与剪裁的宽度(与高度)之比得到
                    var rx = $("#preview_box").width() / coords.w;
                    var ry = $("#preview_box").height() / coords.h;
                    //通过比例值控制图片的样式与显示
                    $("#crop_preview").css({
                        width: Math.round(rx * $("#xuwanting").width()) + "px",	//预览图片宽度为计算比例值与原图片宽度的乘积
                        height: Math.round(rx * $("#xuwanting").height()) + "px",	//预览图片高度为计算比例值与原图片高度的乘积
                        marginLeft: "-" + Math.round(rx * coords.x) + "px",
                        marginTop: "-" + Math.round(ry * coords.y) + "px"
                    });
                }
            }
        });
    </script>
</head>

<body>
<div class="zxx_out_box">
    <div class="zxx_in_box">
        <div class="zxx_header">
            <a href="${path}/userCenter/updateInfo">
                <img class="l"
                     src="http://www.zhangxinxu.com/wordpress/wp-content/themes/default/images/index_logo.gif"/>
            </a>
        </div>
        <h1 class="zxx_title">修改头像</h1>
        <div class="zxx_main_con">
            <div class="zxx_test_list">
                <div class="rel mb20">
                    <img id="xuwanting" src="${path}/static/web/images/user.png"/>
                    <span id="preview_box" class="crop_preview">
                        <img id="crop_preview" src="${path}/static/web/images/user.png"/>
                    </span>
                </div>
                点击上传图片<input type="file" id="pictureUpload" value="上传图片">
                <p class="mt20 mb20"><a href="${path}/userCenter/updateInfo">&lt;&lt; 返回首页</a></p>

            </div>
        </div>
        <div class="zxx_footer" >
            Copyright &copy; by <a href="${path}/userCenter/updateInfo">畅聊-Chat freely</a>
        </div>
    </div>
</div>
</body>
</html >
<script type="text/javascript">
    const pictureUpload = document.getElementById('pictureUpload');
    const xuwanting = document.getElementById('xuwanting');
    const previewBox = document.getElementById('preview_box');
    const cropPreview = document.getElementById('crop_preview');
    pictureUpload.addEventListener('change', function (event) {
        const file = event.target.files[0];
        const reader = new FileReader();

        reader.onload = function (e) {
            const imageSrc = e.target.result;
            xuwanting.src = imageSrc;
            cropPreview.src = imageSrc;
            $(".jcrop-holder").css("overflow","hidden");
            $(".jcrop-holder img").each(function(index){
                this.src = imageSrc;
                $(this).css("height","auto");
            });
        };

        reader.readAsDataURL(file);
    });
</script>