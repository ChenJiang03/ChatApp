<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2023/7/20
  Time: 20:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>jquery+cropper剪切、旋转、缩放图片</title>
    <link rel="stylesheet" type="text/css" href="${path}/static/crop/css/cropper.css">
    <link rel="stylesheet" type="text/css" href="${path}/static/crop/css/index.css">
</head>
<body>
<div>
    <div class="btn-box">
<%--        <input type="button" class="size_btn"  value="200*100" />--%>
<%--        <input type="button" class="size_btn"  value="300*100" />--%>
        <input type="button" class="size_btn"  value="点击上传图片" />
        <a href="${path}/userCenter/updateInfo"><input type="button" value="返回" style="width: 100px; height: 48px"></a>
<%--        <input type="button" class="size_btn"  value="1500*300" />--%>
    </div>
    <div class="img-box">
        <h1>裁剪后图片--预览</h1>
        <img src="" alt="" id="imgBoxId" class="imgBox">
    </div>
</div>

<div class="popup-wrap">
    <div  class="s-upload-container">

        <div class="head">
            <span>上传图片</span>
            <input type="button" class="btn" id="closeBtn" value="关闭" />
        </div>
        <div class="s-upload-main">
            <!-- 上传图片 -->
            <div class="top-box">
                <span class="title">图片上传</span>
                <div class="btn file-box">
                    选择文件
                    <input type="file" accept="image/jpg,image/jpeg,image/png" name="file" id="file" class="btn" onchange="selectImg(this)" multiple="multiple">
                </div>
                <div class="right">预览区域</div>
            </div>
            <div class="s-upload-content">
                <!-- 裁剪区域 -->
                <div class="left-box">
                    <img src="" id="imageId" alt="" class="image">
                </div>
                <!-- 预览区域 -->
                <div class="right-box">
                    <div class="previewBox"></div>
                </div>
            </div>
            <div class="action bottom-box">
                <!-- 旋转 -->
                <div class="left">
                    <input type="button" id="btnLeft"  value="向左旋转" class="btn" onclick="rotateFn('1')">
                    <input type="button" id="btnRight" value="向右旋转" class="btn" onclick="rotateFn('2')">
                </div>
                <div class="right">
                    <!-- 放大、缩小、还原 -->
                    <input type="button" id="btnLarge" class="btn" value="放大">
                    <input type="button" id="btnSmall" class="btn" value="缩小" >
                    <input type="button" id="btnScale" class="btn" value="换向">
                    <input type="button" id="btnInit" class="btn" value="还原">
                    <!-- 保存 -->
                    <input type="button" id="btnSubmit" class="btn submit" value="保存修改" >
                </div>
            </div>
        </div>
    </div>
</div>
<%--<script src="https://www.jq22.com/jquery/jquery-1.7.1.js"></script>--%>
<%--<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--%>
<script src="${path}/static/web/vendor/jquery/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="${path}/static/crop/js/cropper.js"></script>
<%--
<script type="text/javascript" src="${path}/static/cropper/js/index.js"></script>
--%>
</body>
</html>
<script>

    var fileName="";
    // 打开弹窗

    $('.size_btn').on('click',function (e){
        init($(this).attr('value'))
        $('.popup-wrap').addClass('on')
    })
    // 关闭弹窗
    $('#closeBtn').on('click',function(){
        closeFn()
    })

    function closeFn (){
        $('.popup-wrap').removeClass('on')
        $('#imageId').cropper("destroy");
    }

    // 初始化
    function init (cut_size){
        var sizeArr = [0,0];
        var aspectRatio = null
        if(cut_size){
            sizeArr = cut_size.split('*');
            let w = sizeArr[0]*1
            var h = sizeArr[1]*1

            if(w > h){
                aspectRatio = (w/h)  / 1
            } else {
                aspectRatio = 1 / (h/w)
            }
        }


        $('#imageId').cropper({
            viewMode: 1,
            dragMode: 'none',
            initialAspectRatio: 1,
            preview: '.previewBox',
            // 是否在容器上显示网格背景
            background: true,
            // 定义自动剪裁区域的大小
            // autoCropArea: 1,
            // 是否允许鼠标 缩放图片
            zoomOnWheel: false,
            // 是否允许改变剪裁框的大小
            cropBoxResizable:true,
            // 是否可以移动裁剪框
            cropBoxMovable:true,
            // 是否允许旋转图片
            rotatable: true,
            aspectRatio:aspectRatio
            // 初始化时，自动裁剪图片
            // autoCrop:true,
        })
    }

    // 角度
    var deg = 0;
    //向左旋转
    $("#btnLeft").on("click",function () {
        rotateFn(1)
    });
    //向右旋转
    $("#btnRight").on("click",function () {
        rotateFn(2)
    });

    //换向
    var flagX = true;
    $("#btnScale").on("click",function () {
        if(flagX){
            $('#imageId').cropper("scaleX", -1);
            flagX = false;
        }else{
            $('#imageId').cropper("scaleX", 1);
            flagX = true;
        }
        flagX != flagX;
    });

    //复位
    $("#btnInit").on("click",function () {
        $('#imageId').cropper("reset");
    });


    // 放大
    $("#btnLarge").on("click",function () {
        $('#imageId').cropper("zoom",0.1);
    });

    // 缩小
    $("#btnSmall").on("click",function () {
        $('#imageId').cropper("zoom",-0.1);
    });






    // 旋转
    function rotateFn (type){
        if(type ==1){
            deg += 90
        } else {
            deg -= 90
        }

        $('#imageId').cropper("rotate", deg);
    }


    //图像上传
    function selectImg(file) {
        if (!file.files || !file.files[0]){
            return;
        }

        fileName = file.files[0].name;
        var reader = new FileReader();
        reader.onload = function (evt) {
            var replaceSrc = evt.target.result;

            //更换cropper的图片
            $('#imageId').cropper('replace', replaceSrc,false);//默认false，适应高度，不失真

        }
        reader.readAsDataURL(file.files[0]);
    }

    //裁剪后的处理
    $("#btnSubmit").on("click",function () {
        if ($("#imageId").attr("src") == null ){
            return false;
        }else{
            var cas = $('#imageId').cropper('getCroppedCanvas');//获取被裁剪后的canvas
            var base64url = cas.toDataURL('image/png'); //转换为base64地址形式


            $('#imgBoxId').attr('src',base64url)
            closeFn()

            // ajax 上传图片
            var formData = new FormData();
            var file = base64toFile(base64url)

            file.name=fileName;
            console.log(fileName);
            console.log("----------------------")
            console.log(file);
            console.log(file.name);
            formData.append('cropPic',file );

            $.ajax({
                type:'post',
                url: '${path}/userCenter/updatePicture',
                cache: false,
                data: formData,
                processData: false,
                contentType: false,
                dataType:'json',
            }).then(function(res) {
                console.log(res.msg,'-------上传成功')

            }).fail(function(err){
                console.log('-------上传失败')
                console.log(err)}
            )
        }
    });

    // base64 to file
    function base64toFile  (dataurl)  {

        const arr = dataurl.split(',')
        const mime = arr[0].match(/:(.*?);/)[1]
        const suffix = mime.split('/')[1]
        const bstr = atob(arr[1])
        let n = bstr.length
        const u8arr = new Uint8Array(n)
        while (n--) {
            u8arr[n] = bstr.charCodeAt(n)
        }
        const file = new File([u8arr], `__avatar1`, {
            type: mime
        })

        return file
    }

</script>