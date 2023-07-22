<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<c:set var="user" value="${sessionScope.user}"></c:set>
<html lang="en">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">
<title>:: PostMan :: Event App</title>
<link rel="icon" href="favicon.ico" type="image/x-icon" />

<link rel="stylesheet" href="${path}/static/web/fonts/material-icon/css/material-design-iconic-font.min.css">
<link rel="stylesheet" href="${path}/static/web/vendor/bootstrap-datepicker/css/bootstrap-datepicker.min.css">
<link rel="stylesheet" href="${path}/static/web/css/style.min.css">
<script type="text/javascript" src="${path}/static/web/vendor/jquery/jquery-3.6.4.min.js"></script>

<body class="admin">
<div id="layout" class="theme-cyan">

    <div class="navigation navbar justify-content-center py-xl-4 py-md-3 py-0 px-3">

        <a href="index.html" title="Postman" class="brand">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 46 46" fill="none">
                <g id="logo-icon-color">
                    <path id="Vector" d="M26.4966 6.01307V2.00436L22.9746 0L19.5029 2.00436V6.01307L22.9746 8.01743L26.4966 6.01307Z" fill="#4539CF" />
                    <path id="Vector_2" d="M34.7989 10.8235V6.81477L31.3272 4.81042L27.8555 6.81477V10.8235L31.3272 12.8279L34.7989 10.8235Z" fill="#4539CF" />
                    <path id="Vector_3" d="M43 15.4837V11.4749L39.5283 9.47058L36.0063 11.4749V15.4837L39.5283 17.488L43 15.4837Z" fill="#4539CF" />
                    <path id="Vector_4" d="M43 25.0043V20.9956L39.5283 18.9913L36.0063 20.9956V25.0043L39.5283 27.0087L43 25.0043Z" fill="#4539CF" />
                    <path id="Vector_5" d="M33.9935 19.9935V16.9368L31.3269 15.4336L28.6602 16.9368V19.9935L31.3269 21.5469L33.9935 19.9935Z" fill="#4539CF" />
                    <path id="Vector_6" d="M33.9935 29.5142V26.4575L31.3269 24.9041L28.6602 26.4575V29.5142L31.3269 31.0174L33.9935 29.5142Z" fill="#4539CF" />
                    <path id="Vector_7" d="M15.931 19.6928V17.2876L13.8178 16.085L11.7549 17.2876V19.6928L13.8178 20.8453L15.931 19.6928Z" fill="#4539CF" />
                    <path id="Vector_8" d="M15.931 29.1634V26.7582L13.8178 25.5555L11.7549 26.7582V29.1634L13.8178 30.366L15.931 29.1634Z" fill="#4539CF" />
                    <path id="Vector_9" d="M6.4717 24.0022V21.9978L4.76101 20.9956L3 21.9978V24.0022L4.76101 25.0044L6.4717 24.0022Z" fill="#4539CF" />
                    <path id="Vector_10" d="M43 34.4749V30.4662L39.5283 28.4619L36.0063 30.4662V34.4749L39.5283 36.4793L43 34.4749Z" fill="#4539CF" />
                    <path id="Vector_11" d="M25.9433 15.1329V11.8758L23.1257 10.2222L20.2578 11.8758V15.1329L23.1257 16.7865L25.9433 15.1329Z" fill="#4539CF" />
                    <path id="Vector_12" d="M25.9433 34.1242V30.8671L23.1257 29.2135L20.2578 30.8671V34.1242L23.1257 35.7778L25.9433 34.1242Z" fill="#4539CF" />
                    <path id="Vector_13" d="M25.4908 24.3529V21.597L23.126 20.244L20.7109 21.597V24.3529L23.126 25.756L25.4908 24.3529Z" fill="#4539CF" />
                    <path id="Vector_14" d="M34.7989 39.1852V35.1765L31.3272 33.1721L27.8555 35.1765V39.1852L31.3272 41.1896L34.7989 39.1852Z" fill="#4539CF" />
                    <path id="Vector_15" d="M16.6856 10.2222V6.91507L13.8176 5.26147L10.9497 6.91507V10.2222L13.8176 11.8257L16.6856 10.2222Z" fill="#4539CF" />
                    <path id="Vector_16" d="M6.22013 12.9782V11.1242L4.61006 10.1721L3 11.1242V12.9782L4.61006 13.9303L6.22013 12.9782Z" fill="#4539CF" />
                    <path id="Vector_17" d="M26.4966 43.9956V39.9868L22.9746 37.9825L19.5029 39.9868V43.9956L22.9746 45.9999L26.4966 43.9956Z" fill="#4539CF" />
                    <path id="Vector_18" d="M16.6856 39.0849V35.7777L13.8176 34.1241L10.9497 35.7777V39.0849L13.8176 40.7385L16.6856 39.0849Z" fill="#4539CF" />
                    <path id="Vector_19" d="M7.5283 34.8257V32.22L5.26415 30.9172L3 32.22V34.8257L5.26415 36.1285L7.5283 34.8257Z" fill="#4539CF" />
                </g>
            </svg>
        </a>

        <div class="nav flex-md-column nav-pills flex-grow-1" role="tablist" aria-orientation="vertical">
            <a class="mb-xl-3 mb-md-2 nav-link active" data-bs-toggle="pill" href="#nav-tab-user" role="tab">
                <img src="${path}/static/web/images/user.png" class="avatar sm rounded-circle" alt="user avatar" />
            </a>
            <a class="mb-xl-3 mb-md-2 nav-link" data-bs-toggle="pill" href="${path}/userCenter/contacts" role="tab"><i class="zmdi zmdi-home"></i></a>
<%--            <a class="mb-xl-3 mb-md-2 nav-link" data-bs-toggle="pill" href="#nav-tab-notifications" role="tab"><i class="zmdi zmdi-notifications"></i></a>--%>
            <a class="mb-xl-3 mb-md-2 nav-link" data-toggle="pill" href="" role="tab" hidden><i class="zmdi zmdi-account-circle"></i></a>
            <a class="mb-xl-3 mb-md-2 nav-link d-none d-sm-block flex-grow-1" data-bs-toggle="pill" href="" role="tab" hidden><i class="zmdi zmdi-layers" hidden></i></a>

            <a class="mt-xl-3 mt-md-2 nav-link light-dark-toggle" href="javascript:void(0);">
                <i class="zmdi zmdi-brightness-2"></i>
                <input class="light-dark-btn" type="checkbox">
            </a>
            <a class="mt-xl-3 mt-md-2 nav-link d-none d-sm-block" href="${path}/userCenter/updateInfo" role="tab"><i class="zmdi zmdi-settings"></i></a>
        </div>

        <button type="submit" class="btn sidebar-toggle-btn shadow-sm"><i class="zmdi zmdi-menu"></i></button>
    </div>

<%----------------------------------------左边个人信息栏----------------------------------------------------%>

    <jsp:include page="/static/inc/leftInfo.jsp"></jsp:include>

    <div class="main px-xl-5 px-lg-4 px-3">

        <div class="main-body">

            <div class="body-header border-bottom py-xl-3 py-2">
                <div class="container px-0">
                    <div class="row align-items-center">

                        <div class="col-12">
                            <div class="media">
                                <div class="avatar sm">
                                    <a href="index.html" title="" class="link"><i class="zmdi zmdi-arrow-left zmdi-hc-lg"></i></a>
                                </div>
                                <div class="media-body overflow-hidden">
                                    <div class="d-flex align-items-center mb-1">
                                        <h6 class="fw-bold text-truncate mb-0 me-auto">设置</h6>
                                    </div>
                                    <div class="text-truncate">上次更新时间: ${user.updateTime}</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="body-page d-flex py-xl-3 py-2">
                <div class="container px-0">

                    <div class="row">
                        <div class="col-12">
                            <ul class="nav nav-tabs nav-overflow page-header-tabs mb-4 mt-md-5 mt-3">
                                <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#setting-general" role="tab">通用</a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#setting-billing" role="tab">修改头像</a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#setting-security" role="tab">隐私与安全</a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#setting-faqs" role="tab">问题</a></li>
                            </ul>
                        </div>
                    </div>

<%--------------------------------------------------------------------------------------------------------------------%>
<%--------------------------------------------------------------------------------------------------------------------%>
<%--------------------------------------------------通用设置栏----------------------------------------------------------%>
                    <div class="tab-content">

                        <div class="tab-pane fade show active" id="setting-general" role="tabpanel">
                            <div class="row">
                                <div class="col-12">
                                    <div class="card mb-4">
                                        <div class="card-header">
                                            <h6 class="card-title mb-0">账号设置</h6>
                                            <span class="text-muted small">更新你的账号信息</span>
                                        </div>
                                        <div class="card-body">

                                            <form class="row g-3" action="${path}/userCenter/updateInfo" method="post">
                                                <div class="col-lg-4 col-md-6 col-sm-12">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <input type="text" name="id" value="${user.id}" hidden>
                                                            <input type="text" name="name" id="name" class="form-control form-control-lg" placeholder="请输入你的名字" value="${user.name}">
                                                            <span id="nameMsg"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4 col-md-6 col-sm-12">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <input type="text" name="email" id="email" class="form-control form-control-lg" placeholder="请输入邮箱" value="${user.email}">
                                                            <span id="emailMsg"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <textarea rows="4" name="signature" id="signature" class="form-control" placeholder="请输入个人简介">${user.signature}</textarea>
                                                            <span id="signatureMsg"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <button type="submit" class="btn btn-primary" id="updateBtn" onclick="notifyUpdate()">更新信息</button>
                                                    <button type="button" class="btn btn-link" onclick="refreshPage()">取消</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row justify-content-between mt-4">
                                <div class="col-12 col-md-6">
                                    <h5>删除你的账号</h5>
                                    <p class="text-muted mb-md-0">请注意，点击删除账号将会永久删除账号并且一旦删除账号将无法撤回。</p>
                                </div>
                                <div class="col-auto">
                                    <form action="${path}/userCenter/deleteUser" method="post" id="deleteUser">
                                        <input type="button" class="btn btn-danger" value="删除" onclick="verifyDelete()">
                                    </form>
                                </div>
                            </div>
                        </div>




<%--------------------------------------------------------------------------------------------------------------------%>
<%--------------------------------------------------------------------------------------------------------------------%>
<%-------------------------------------------------隐私与安全部分--------------------------------------------------------%>

                        <div class="tab-pane fade" id="setting-security" role="tabpanel">
                            <div class="row justify-content-between mb-4">
                                <div class="col-12 col-md-6">
                                    <h5>修改密码</h5>
                                </div>
                                <div class="col-auto">
                                    <button class="btn btn-warning">忘记密码了？</button>
                                </div>
                            </div>

<%-------------------------------------------------修改密码--------------------------------------------------------%>
                            <div class="row g-3">
                                <div class="col-12">

                                    <div class="card mb-4">
                                        <div class="card-body">
                                            <form class="row" action="${path}/userCenter/updatePassword" method="post">
                                                <div class="col-lg-4 col-md-12">
                                                    <div class="form-group mb-3">
                                                        <label>旧密码</label>
                                                        <input type="password" id="oldPassword" class="form-control">
                                                        <span id="oldPasswordMsg"></span>
                                                    </div>
                                                    <div class="form-group mb-3">
                                                        <label>新密码</label>
                                                        <input type="password" id="password" name="password" class="form-control">
                                                        <span id="passwordMsg"></span>
                                                    </div>
                                                    <div class="form-group mb-3">
                                                        <label>请再输入密码</label>
                                                        <input type="password" class="form-control" id="confirmPassword">
                                                        <span id="confirmPasswordMsg"></span>
                                                    </div>
                                                    <button type="submit" class="btn btn-primary" id="passwordBtn">更新密码</button>
                                                    <button type="button" class="btn btn-link" onclick="refreshPage()">取消</button>
                                                </div>
                                                <div class="col-lg-8 col-md-12">

                                                    <div class="card bg-light border">
                                                        <div class="card-body">
                                                            <p class="mb-2">密码要求</p>
                                                            <p class="small text-muted mb-2">要创建一个新密码，您必须满足以下所有要求：</p>

                                                            <ul class="small text-muted ps-4 mb-0">
                                                                <li>5-20位字符</li>
                                                                <li>字符由大小写字母，数字，下划线组成</li>
                                                                <li>不能和旧密码一样</li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>


<%--------------------------------------------------修改手机号-------------------------------------------------------%>

                            <div class="row justify-content-between mb-4">
                                <div class="col-12 col-md-6">
                                    <h5>修改手机号</h5>
                                </div>
                                <div class="col-auto">
                                    <button class="btn btn-warning">忘记密码了？</button>
                                </div>
                            </div>

                            <div class="row g-3">
                                <div class="col-12">

                                    <div class="card mb-4">
                                        <div class="card-body">
                                            <form class="row" action="${path}/userCenter/updatePhone" method="post" id="updatePhoneForm">
                                                <div class="col-lg-4 col-md-12">
                                                    <div class="form-group mb-3">
                                                        <label>请输入您的密码</label>
                                                        <input type="text" class="form-control" id="passwordPhone">
                                                        <span id="phonePasswordMsg"></span>
                                                    </div>
                                                    <div class="form-group mb-3">
                                                        <label>请输入您之前的手机号</label>
                                                        <input type="text" class="form-control" id="oldPhone">
                                                        <span id="oldPhoneMsg"></span>
                                                    </div>
                                                    <div class="form-group mb-3">
                                                        <label>请输入您新的手机号</label>
                                                        <input type="text" name="phone" id="phone" class="form-control">
                                                        <span id="phoneMsg"></span>
                                                        <input type="button" id="getCodeBtn" class="form-control form-control-lg" value="点击获取验证码">
                                                    </div>
                                                    <div class="form-group mb-3">
                                                        <label>请输入验证码</label>
                                                        <input type="text" name="verifyCode" id="verifyCode" class="form-control">
                                                        <span id="verifyCodeMsg"></span>
                                                    </div>
                                                    <button type="button" class="btn btn-primary" id="phoneBtn">更新手机号</button>
                                                    <button type="button" class="btn btn-link" onclick="refreshPage()">取消</button>
                                                </div>
                                                <div class="col-lg-8 col-md-12">

                                                    <div class="card bg-light border">
                                                        <div class="card-body">
                                                            <p class="mb-2">手机号更换说明</p>
                                                            <p class="small text-muted mb-2">要更换手机号，您必须满足以下所有要求：</p>

                                                            <ul class="small text-muted ps-4 mb-0">
                                                                <li>您必须输入您之前的密码</li>
                                                                <li>您必须输入您之前的手机号</li>
                                                                <li>您输入您现在的手机号之后，必须通过手机验证码验证才能进行更改</li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>




                            <div class="row justify-content-between mt-4 mb-4">
                                <div class="col-12 col-md-6">
                                    <h5>登录设备历史</h5>
                                    <p class="text-muted mb-md-0">如果你在这里看到一个你认为不是你的设备，请立即联系我们的账户欺诈部门。</p>
                                </div>
                                <div class="col-auto">
                                    <button class="btn btn-dark">登出所有设备</button>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">

                                    <div class="card mb-4">
                                        <div class="card-body">
                                            <div class="list-group custom list-group-flush my-md-3">
                                                <div class="list-group-item px-0">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <div class="avatar lg text-center"><i class="zmdi zmdi-smartphone h2"></i></div>
                                                        </div>
                                                        <div class="col ml-n2">
                                                            <h6 class="mb-1">iPhone 11</h6>
                                                            <small class="text-muted">Brownsville, VT · <time>Jun 11 at 10:05am</time></small>
                                                        </div>
                                                        <div class="col-auto">
                                                            <button class="btn btn-sm btn-white">Sign out</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="list-group-item px-0">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <div class="avatar lg text-center"><i class="zmdi zmdi-desktop-mac h2"></i></div>
                                                        </div>
                                                        <div class="col ml-n2">
                                                            <h6 class="mb-1">iMac OSX · <span class="font-weight-normal">Safari 10.2</span></h6>
                                                            <small class="text-muted">Ct, Corona, CA · <time>September 14 at 2:30pm</time></small>
                                                        </div>
                                                        <div class="col-auto">
                                                            <button class="btn btn-sm btn-white">Sign out</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="list-group-item px-0">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <div class="avatar lg text-center"><i class="zmdi zmdi-laptop h2"></i></div>
                                                        </div>
                                                        <div class="col ml-n2">
                                                            <h6 class="mb-1">HP Laptop Win10</h6>
                                                            <small class="text-muted">Ct, Corona, CA · <time>September 16 at 11:16am</time></small>
                                                        </div>
                                                        <div class="col-auto">
                                                            <button class="btn btn-sm btn-white">Sign out</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="list-group-item px-0">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <div class="avatar lg text-center"><i class="zmdi zmdi-desktop-windows h2"></i></div>
                                                        </div>
                                                        <div class="col ml-n2">
                                                            <h6 class="mb-1">iMac OSX · <span class="font-weight-normal">Edge browser</span></h6>
                                                            <small class="text-muted">Huntington Station, NY · <time>October 26 at 5:16pm</time></small>
                                                        </div>
                                                        <div class="col-auto">
                                                            <button class="btn btn-sm btn-white">Sign out</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
<%--------------------------------------------------------------------------------------------------------------------%>
<%--------------------------------------------------------------------------------------------------------------------%>
<%----------------------------------------------------问题部分----------------------------------------------------------%>
                        <div class="tab-pane fade" id="setting-faqs" role="tabpanel">
                            <div class="row">
                                <div class="col-lg-3 col-md-12">
                                    <div class="mb-4">
                                        <h6>有用的小技巧</h6>
                                        <p class="text-muted">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt.</p>
                                        <div class="list-group custom">
                                            <a class="list-group-item" href="#"><i class="zmdi zmdi-circle small me-2 text-danger"></i>Lorem ipsum</a>
                                            <a class="list-group-item" href="#"><i class="zmdi zmdi-circle small me-2 text-info"></i>Consectetuer adipiscing</a>
                                            <a class="list-group-item" href="#"><i class="zmdi zmdi-circle small me-2 text-primary"></i>Sed diam nonummy</a>
                                            <a class="list-group-item" href="#"><i class="zmdi zmdi-circle small me-2 text-warning"></i>Euismod tincidunt</a>
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <h6>找不到答案？ </h6>
                                        <p class="text-muted">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt.</p>
                                        <a href="#" class="btn btn-primary">联系我们</a>
                                    </div>
                                </div>
                                <div class="col-lg-9 col-md-12">

                                    <div class="card">
                                        <div class="card-body">
                                            <h6>通用</h6>
                                            <div id="demo-gen-faq" class="accordion border-bottom mb-4">
                                                <div class="mb-1">
                                                    <div class="py-2 px-3 bg-light">
                                                        <a href="#demo-gen-faq1" data-bs-toggle="collapse">Lorem ipsum dolor sit amet ?</a>
                                                        <div id="demo-gen-faq1" class="collapse in">
                                                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mb-1">
                                                    <div class="py-2 px-3 bg-light">
                                                        <a href="#demo-gen-faq2" data-bs-toggle="collapse">Consectetuer adipiscing elit ?</a>
                                                        <div id="demo-gen-faq2" class="collapse in py3">
                                                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mb-1">
                                                    <div class="py-2 px-3 bg-light">
                                                        <a href="#demo-gen-faq3" data-bs-toggle="collapse">Sed diam nonummy nibh euismod tincidunt ?</a>
                                                        <div id="demo-gen-faq3" class="collapse">
                                                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mb-1">
                                                    <div class="py-2 px-3 bg-light">
                                                        <a href="#demo-gen-faq4" data-bs-toggle="collapse">Tincidunt ut laoreet dolore magna ?</a>
                                                        <div id="demo-gen-faq4" class="collapse">
                                                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <h6>Account</h6>
                                            <div id="demo-acc-faq" class="accordion mb-4">
                                                <div class="mb-1">
                                                    <div class="py-2 px-3 bg-light">
                                                        <a href="#demo-acc-faq1" data-bs-toggle="collapse">Lorem ipsum dolor sit amet ?</a>
                                                        <div id="demo-acc-faq1" class="collapse in">
                                                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mb-1">
                                                    <div class="py-2 px-3 bg-light">
                                                        <a href="#demo-acc-faq2" data-bs-toggle="collapse">Consectetuer adipiscing elit ?</a>
                                                        <div id="demo-acc-faq2" class="collapse">
                                                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mb-1">
                                                    <div class="py-2 px-3 bg-light">
                                                        <a href="#demo-acc-faq3" data-bs-toggle="collapse">Sed diam nonummy nibh euismod tincidunt ?</a>
                                                        <div id="demo-acc-faq3" class="collapse">
                                                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <h6 class="pad-all bord-btm text-thin">支付</h6>
                                            <div id="demo-pym-faq" class="accordion">
                                                <div class="mb-1">
                                                    <div class="py-2 px-3 bg-light">
                                                        <a href="#demo-pym-faq1" data-bs-toggle="collapse" data-parent="#demo-pym-faq">Lorem ipsum dolor sit amet ?</a>
                                                        <div id="demo-pym-faq1" class="collapse in">
                                                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mb-1">
                                                    <div class="py-2 px-3 bg-light">
                                                        <a href="#demo-pym-faq2" data-bs-toggle="collapse" data-parent="#demo-pym-faq">Consectetuer adipiscing elit ?</a>
                                                        <div id="demo-pym-faq2" class="collapse in">
                                                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mb-1">
                                                    <div class="py-2 px-3 bg-light">
                                                        <a href="#demo-pym-faq3" data-bs-toggle="collapse" data-parent="#demo-pym-faq">Sed diam nonummy nibh euismod tincidunt ?</a>
                                                        <div id="demo-pym-faq3" class="collapse in">
                                                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mb-1">
                                                    <div class="py-2 px-3 bg-light">
                                                        <a href="#demo-pym-faq4" data-bs-toggle="collapse" data-parent="#demo-pym-faq">Tincidunt ut laoreet dolore magna ?</a>
                                                        <div id="demo-pym-faq4" class="collapse in">
                                                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>

<script src="${path}/static/web/vendor/jquery/jquery-3.5.1.min.js" type="19cf48fd2337d09ff06d0d5e-text/javascript"></script>
<script src="${path}/static/web/vendor/bootstrap/js/bootstrap.bundle.min.js" type="19cf48fd2337d09ff06d0d5e-text/javascript"></script>

<script src="${path}/static/web/vendor/bootstrap-datepicker/js/bootstrap-datepicker.min.js" type="19cf48fd2337d09ff06d0d5e-text/javascript"></script>

<script src="${path}/static/web/js/template.js" type="19cf48fd2337d09ff06d0d5e-text/javascript"></script>
<script src="https://ajax.cloudflare.com/cdn-cgi/scripts/7089c43e/cloudflare-static/rocket-loader.min.js" data-cf-settings="19cf48fd2337d09ff06d0d5e-|49" defer=""></script></body>
</html>

<%--修改用户个人资料的表单验证--%>
<script type="text/javascript">

    var nameFlag = false, emailFlag = false, signatureFlag = false;

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


    function checkEmail() {
        var email = $("#email").val();
        var emailExp = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(.[a-zA-Z0-9_-]+)+$/;
        if (!emailExp.test(email)) {
            $("#emailMsg").html("*");
            $("#emailMsg").css("color", "red");
            emailFlag = false;
        } else {
            $("#emailMsg").html("√");
            $("#emailMsg").css("color", "green");
            emailFlag = true;
        }
    }

    function checkSignature() {
        var signature = $("#signature").val();
        var signatureExp = /^.{0,200}$/;
        if (!signatureExp.test(signature)) {
            $("#signatureMsg").html("您的个性签名不符合规定，请输入200位以内的字符");
            $("#signatureMsg").css("color", "red");
            signatureFlag = false;
        } else {
            $("#signatureMsg").html("√");
            $("#signatureMsg").css("color", "green");
            signatureFlag = true;
        }
    }

    function refreshPage()
    {
        location.reload();
    }

    function notifyUpdate()
    {
        alert("更新成功！");
    }

    $(function () {
        $("#name").blur(checkName);
        $("#email").blur(checkEmail);
        $("#signature").blur(checkSignature);

        $("#updateBtn").click(function () {
            checkName();
            checkEmail();
            checkSignature();
            if (!nameFlag || !phoneFlag || !signatureFlag) {
                //阻止表单提交
                return false;
            }
        });

    });

    function verifyDelete()
    {
        var confirmation = confirm("确定要删除您的账号吗？一旦删除不可撤销");
        console.log(confirmation);
        if(confirmation)
        {
            console.log(111);
            $("#deleteUser").submit();
        }
        else
        {
            return false;
        }
    }

</script>

<%--修改密码的表单验证--%>
<script type="text/javascript">

    var oldPasswordFlag = false, newPasswordFlag = false, confirmPasswordFlag = false;
    function checkOldPassword(){
        var oldPassword = $("#oldPassword").val();

        $.ajax({
            url: "${path}/userCenter/verifyPassword",
            type: "GET",
            data: {
                oldPassword: oldPassword
            },
            async: false, // 设置为同步请求
            success: function(data)
            {
                console.log(data);
                if (data == "fail") {
                    $("#oldPasswordMsg").html("密码错误");
                    $("#oldPasswordMsg").css("color", "red");
                    oldPasswordFlag = false;
                } else {
                    $("#oldPasswordMsg").html("√");
                    $("#oldPasswordMsg").css("color", "green");
                    oldPasswordFlag = true;
                }
            }
        });
    }

    function checkNewPassword(){
        var password = $("#password").val();
        var passwordExp = /^.{5,20}$/;
        if (!passwordExp.test(password)) {
            $("#passwordMsg").html("*");
            $("#passwordMsg").css("color", "red");
            newPasswordFlag = false;
        } else {
            $("#passwordMsg").html("√");
            $("#passwordMsg").css("color", "green");
            newPasswordFlag = true;
        }
    }

    function checkConfirmPassword(){
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

    $("#passwordBtn").click(function () {
        checkOldPassword();
        checkNewPassword();
        checkConfirmPassword();
        if (!newPasswordFlag || !confirmPasswordFlag || !oldPasswordFlag) {
            //阻止表单提交
            return false;
        }
        alert("密码修改成功！");
    });

</script>

<%--修改手机号码的表单验证+发送验证码--%>
<script type="text/javascript">

    var phonePasswordFlag = false, oldPhoneFlag = false, newPhoneFlag = false, verifyCodeFlag = false;
    function checkPhonePassword(){
        var phonePassword = $("#passwordPhone").val();
        $.ajax({
            url: "${path}/userCenter/verifyPassword",
            type: "GET",
            data: {
                oldPassword: phonePassword
            },
            async: false, // 设置为同步请求
            success: function(data)
            {
                console.log(data);
                if (data == "fail") {
                    $("#phonePasswordMsg").html("密码错误");
                    $("#phonePasswordMsg").css("color", "red");
                    phonePasswordFlag = false;
                } else {
                    $("#phonePasswordMsg").html("√");
                    $("#phonePasswordMsg").css("color", "green");
                    phonePasswordFlag = true;
                }
            }
        });
    }

    function checkOldPhone(){
        var oldPhone = $("#oldPhone").val();
        var oldPhoneValue = "${user.phone}";
        if (oldPhone != oldPhoneValue) {
            $("#oldPhoneMsg").html("*");
            $("#oldPhoneMsg").css("color", "red");
            oldPhoneFlag = false;
        } else {
            $("#oldPhoneMsg").html("√");
            $("#oldPhoneMsg").css("color", "green");
            oldPhoneFlag = true;
        }
    }


    function checkNewPhone() {
        var phone = $("#phone").val();
        var phoneExp = /^1[3-9]\d{9}$/;
        if (!phoneExp.test(phone)) {
            $("#phoneMsg").html("*");
            $("#phoneMsg").css("color", "red");
            newPhoneFlag = false;
        } else {
            $("#phoneMsg").html("√");
            $("#phoneMsg").css("color", "green");
            newPhoneFlag = true;
        }
    }

    $("#phoneBtn").click(function () {
        checkPhonePassword();
        checkOldPhone();
        checkNewPhone();
        if (!phonePasswordFlag || !oldPhoneFlag || !newPhoneFlag) {
            //阻止表单提交
            return;
        }

        var code = $("#verifyCode").val();
        $.get("${path}/web/verifyCode?code="+code,function (data){
            console.log(data);
            if (data == "fail")
            {
                $("#verifyCodeMsg").html("验证码错误");
                $("#verifyCodeMsg").css("color", "red");
                return;
            }
            else
            {
                $("#verifyCodeMsg").html("√");
                $("#verifyCodeMsg").css("color", "green");
                verifyCodeFlag = true;
                alert("手机号更新成功！");
                $("#updatePhoneForm").submit();
            }
        });

    });

    //点击获取验证码
    $("#getCodeBtn").click(function (){
        var phoneNum = $("#phone").val();
        console.log(phoneNum);
        $.get("${path}/web/sendCode?phone="+phoneNum,function (data){
            console.log(data);
            if (data == "fail")
            {
                alert("发送验证码失败，请重试");
            }
            else
            {
                alert("验证码发送成功！");
            }
        });

        var button = document.getElementById('getCodeBtn');
        button.disabled = true; // 设置按钮为不可点击状态

        var secondsLeft = 59;
        updateTime();

        var countdownInterval = setInterval(updateTime, 1000); // 每秒更新倒计时

        setTimeout(function() {
            button.disabled = false; // 60秒后将按钮设置为可点击状态
            clearInterval(countdownInterval); // 清除倒计时定时器
            button.value = '点击获取验证码'; // 清空倒计时显示
        }, secondsLeft * 1000);

        function updateTime() {
            var minutes = Math.floor(secondsLeft / 60);
            var seconds = secondsLeft % 60;

            button.value = "点击获取验证码（"+seconds + '秒）';
            secondsLeft--;
        }

    });
</script>