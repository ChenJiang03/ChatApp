<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html lang="en">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">
<title>:: PostMan :: Chat Application</title>
<link rel="icon" href="favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="${path}/static/web/css/slidercaptcha.css" type="text/css"/>
<link rel="stylesheet" href="${path}/static/web/fonts/material-icon/css/material-design-iconic-font.min.css">
<link rel="stylesheet" href="${path}/static/web/css/style.min.css">
<script type="text/javascript" src="${path}/static/web/js/longbow.slidercaptcha.js"></script>
<body>
<div id="layout" class="theme-cyan">
    <div class="authentication">
        <div class="container d-flex flex-column">
            <div class="row align-items-center justify-content-center no-gutters min-vh-100">
                <div class="col-12 col-md-7 col-lg-5 col-xl-4 py-md-11">
                    <div class="card border-0 shadow-sm">
                        <div class="card-body">

                            <h3 class="text-center">登录</h3>

                            <p class="text-center mb-6">使其简单，但依然重要</p>

                            <form class="mb-4 mt-5" action="${path}/web/login" method="post">

                                <div class="input-group mb-2">
                                    <input type="text" name="username" class="form-control form-control-lg" placeholder="请输入用户名">
                                </div>

                                <div class="input-group mb-4">
                                    <input type="password" name="password" class="form-control form-control-lg" placeholder="请输入密码">
                                </div>

                                <div>
                                    <input type="button" class="form-control form-control-lg" id="slideCapthca" value="点击滑动验证码" onclick="setCaptcher()">
                                    <div id="captcha" hidden style="height: 200px"></div>
                                </div>

                                <div class="form-group d-flex justify-content-between">
                                    <label class="c_checkbox">
                                        <input type="checkbox">
                                        <span class="ms-2 todo_name">记住我</span>
                                        <span class="checkmark"></span>
                                    </label>
                                    <a class="link" href="password-reset.html">重置密码</a>
                                </div>

                                <div class="text-center mt-5">
                                    <input type="submit" class="btn btn-lg btn-primary" value="登录" id="btn" onclick="alertVerify()">
                                </div>
                            </form>

                            <p class="text-center mb-0">还没有账号？ <a class="link" href="${path}/web/register">点击注册</a></p>
                        </div>
                    </div>
                </div>
                <div class="signin-img d-none d-lg-block text-center">
                    <img src="${path}/static/web/images/signin-img-cyan.svg" alt="Sign In Image" />
                </div>
            </div>
        </div>
    </div>
</div>

<script src="${path}/static/web/vendor/jquery/jquery-3.5.1.min.js" type="1caaa891046e7adc142b6b12-text/javascript"></script>
<script src="${path}/static/web/vendor/bootstrap/js/bootstrap.bundle.min.js" type="1caaa891046e7adc142b6b12-text/javascript"></script>
<script src="https://ajax.cloudflare.com/cdn-cgi/scripts/7089c43e/cloudflare-static/rocket-loader.min.js" data-cf-settings="1caaa891046e7adc142b6b12-|49" defer=""></script></body>
</html>

<script type="text/javascript" src="${path}/static/web/vendor/jquery/jquery-3.6.4.min.js"></script>
<script>
    //————————————————————————————————————————————————————————————————————————————
    //滑动验证码部分：

    var flag = false;

    function setCaptcher() {
        var captcha = document.getElementById("captcha");
        captcha.removeAttribute("hidden");
    }

    function alertVerify() {
        if (flag == false) {
            var btn = document.getElementById("btn");
            btn.setAttribute("disabled", "disabled");
            alert("请先滑动验证码验证");
        }
    }

    var captcha = sliderCaptcha({
        id: 'captcha',
        width: 280,
        height: 150,
        sliderL: 42,
        sliderR: 9,
        offset: 5,
        loadingText: '正在加载中...',
        failedText: '再试一次',
        barText: '向右滑动填充拼图',
        repeatIcon: 'fa fa-redo',
        setSrc: function () {
            return '${path}/static/captchaImage/Pic' + Math.round(Math.random() * 10) + '.jpg';
        },
        <%--onFail: function ()--%>
        <%--{--%>
        <%--    ${captcha} = false;--%>
        <%--    console.log(${captcha});--%>
        <%--},--%>
        onSuccess: function () {
            ${captcha = true};
            flag = true;
            console.log(${captcha});
            var btn = document.getElementById("btn");
            btn.removeAttribute("disabled");
            setTimeout(function () {
                $("#captcha").hide();
            }, 1000);

        },
        verify: function (arr, url) {
            console.log("-----------------")
            console.log(arr)
            var ret = false;
            $.ajax({
                url: url,
                data: JSON.stringify(arr),
                async: false,
                cache: false,
                type: 'POST',
                contentType: 'application/json',
                dataType: 'json',
                success: function (result) {
                    ret = result;
                }
            });
            return ret;
        },
        remoteUrl: "${path}/sliderCaptcha/isVerify"
    });


    //————————————————————————————————————————————————————————————————————————————

</script>