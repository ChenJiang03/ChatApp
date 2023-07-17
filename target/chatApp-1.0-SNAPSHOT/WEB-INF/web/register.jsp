<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
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

                            <h3 class="text-center">注册</h3>

                            <p class="text-center mb-6">快来创建一个新账号吧！</p>

                            <form class="mb-4 mt-5" action="${path}/web/register" method="post">

                                <div class="input-group mb-2">
                                    <input type="text" class="form-control form-control-lg" name="username" id="username" placeholder="请输入用户名（5-20位数字字母下划线）">
                                    <span id="usernameMsg"></span>
                                </div>

                                <div class="input-group mb-2">
                                    <input type="password" class="form-control form-control-lg" name="password" id="password" placeholder="请输入密码（5-20位任意字符）">
                                    <span id="passwordMsg"></span>
                                </div>

                                <div class="input-group mb-2">
                                    <input type="password" class="form-control form-control-lg" name="confirmPassword" id="confirmPassword" placeholder="请再次输入密码">
                                    <span id="confirmPasswordMsg"></span>
                                </div>

                                <div class="input-group mb-2">
                                    <input type="text" class="form-control form-control-lg" name="name" id="name" placeholder="请输入昵称（15字以内）">
                                    <span id="nameMsg"></span>
                                </div>

                                <div class="input-group mb-2">
                                    <input type="text" class="form-control form-control-lg" name="phone" id="phone" placeholder="请输入手机号">
                                    <span id="phoneMsg"></span>
                                    <input type="button" class="form-control form-control-lg" value="点击获取验证码" disabled>
                                </div>

                                <div class="input-group mb-2">
                                    <input type="text" class="form-control form-control-lg" id="verifyCode" placeholder="请输入验证码">
                                    <span id="verifyCodeMsg" ></span>
                                </div>

                                <div>
                                    <input type="button" class="form-control form-control-lg" id="slideCapthca" value="点击滑动验证码" onclick="setCaptcher()">
                                    <div id="captcha" hidden style="height: 200px"></div>
                                </div>

                                <div class="text-center mt-5">
                                    <input type="submit" class="btn btn-lg btn-primary" value="注册" id="btn" onclick="alertVerify()">
                                </div>
                            </form>

                            <p class="text-center mb-0">已经有账号了？ <a class="link" href="${path}/web/login">点击登录</a></p>

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

<script src="${path}/static/web/vendor/jquery/jquery-3.5.1.min.js" type="617e62e51bbeb120c8072e37-text/javascript"></script>
<script src="${path}/static/web/vendor/bootstrap/js/bootstrap.bundle.min.js" type="617e62e51bbeb120c8072e37-text/javascript"></script>
<script src="https://ajax.cloudflare.com/cdn-cgi/scripts/7089c43e/cloudflare-static/rocket-loader.min.js" data-cf-settings="617e62e51bbeb120c8072e37-|49" defer=""></script></body>
</html>

<script type="text/javascript" src="${path}/static/web/vendor/jquery/jquery-3.6.4.min.js"></script>
<script>
    var usernameFlag = false, passwordFlag = false, confirmPasswordFlag = false, nameFlag = false, phoneFlag = false,
        verifyCodeFlag = false;

    function checkUsername() {
        var username = $("#username").val();
        var usernameExp = /^\w{5,20}$/;
        if (!usernameExp.test(username)) {
            $("#usernameMsg").html("*");
            $("#usernameMsg").css("color", "red");
            usernameFlag = false;
        } else {
            $.ajax({
                url: "${path}/web/existUser",
                data: {username: username},
                success: function (data) {
                    // console.log("-----------------")
                    // console.log(data);
                    if (data == "ok") {
                        $("#usernameMsg").html("√");
                        $("#usernameMsg").css("color", "green");
                        usernameFlag = true;
                    } else if (data == "no") {
                        $("#usernameMsg").html("已存在");
                        $("#usernameMsg").css("color", "red");
                        usernameFlag = false;
                    }
                }
            });
        }
    }

    function checkPassword() {
        var password = $("#password").val();
        var passwordExp = /^.{5,20}$/;
        if (!passwordExp.test(password)) {
            $("#passwordMsg").html("*");
            $("#passwordMsg").css("color", "red");
            passwordFlag = false;
        } else {
            $("#passwordMsg").html("√");
            $("#passwordMsg").css("color", "green");
            passwordFlag = true;
        }
    }

    function checkConfirmPassword() {
        var password = $("#password").val();
        var confirmPassword = $("#confirmPassword").val();
        if (password != confirmPassword) {
            $("#confirmPasswordMsg").html("*");
            $("#confirmPasswordMsg").css("color", "red");
            confirmPasswordFlag = false;
        } else {
            $("#confirmPasswordMsg").html("√");
            $("#confirmPasswordMsg").css("color", "green");
            confirmPasswordFlag = true;
        }
    }

    function checkName() {
        var name = $("#name").val();
        var nameExp = /^[\u4e00-\u9fa5a-zA-Z0-9]{1,15}$/;
        if (!nameExp.test(name)) {
            $("#nameMsg").html("*");
            $("#nameMsg").css("color", "red");
            nameFlag = false;
        } else {
            $("#nameMsg").html("√");
            $("#nameMsg").css("color", "green");
            nameFlag = true;
        }
    }

    function checkPhone() {
        var phone = $("#phone").val();
        var phoneExp = /^1[3-9]\d{9}$/;
        if (!phoneExp.test(phone)) {
            $("#phoneMsg").html("*");
            $("#phoneMsg").css("color", "red");
            phoneFlag = false;
        } else {
            $("#phoneMsg").html("√");
            $("#phoneMsg").css("color", "green");
            phoneFlag = true;
        }
    }

    // function checkVerifyCode(){
    //
    // }

    $(function () {
        $("#username").blur(checkUsername);
        $("#password").blur(checkPassword);
        $("#confirmPassword").blur(checkConfirmPassword);
        $("#name").blur(checkName);
        $("#phone").blur(checkPhone);

        $("#btn").click(function () {
            checkUsername();
            checkPassword();
            checkConfirmPassword();
            checkName();
            checkPhone();
            if (!usernameFlag || !passwordFlag || !confirmPasswordFlag || !nameFlag || !phoneFlag) {
                //阻止表单提交
                return false;
            }
        });
    });

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