<%--
  Created by IntelliJ IDEA.
  User: Nancy
  Date: 2023/7/21
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<div class="sidebar border-end py-xl-4 py-3 px-xl-4 px-3">
    <div class="tab-content">

        <div class="tab-pane fade show active" id="nav-tab-user" role="tabpanel">

            <div class="d-flex justify-content-between align-items-center mb-4">
                <h4 class="mb-0 text-primary">个人信息</h4>
                <div>
                    <a href="signin.html" title="" class="btn btn-dark">退出登录</a>
                </div>
            </div>

            <div class="form-group input-group-lg search mb-3">
                <i class="zmdi zmdi-search"></i>
                <input type="text" class="form-control" placeholder="搜索...">
            </div>

            <div class="card border-0 text-center pt-3 mb-4">
                <div class="card-body">
                    <div class="card-user-avatar">
                        <img src="${path}/static/uploadImages/${user.picture}" alt="avatar" style="width: 140px; height: 140px"/>
                        <a href="${path}/userCenter/updatePicture">
                            <button type="button" class="btn btn-secondary btn-sm"><i class="zmdi zmdi-edit"></i></button>
                        </a>
                    </div>
                    <div class="card-user-detail mt-4">
                        <h5>${user.name}</h5>
                        <span class="text-muted"><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="d5b8bcb6bdb0b9b9b0fbb2a7b0b0bb95b2b8b4bcb9fbb6bab8">[email&#160;protected]</a></span>
                        <p>+86 ${user.phone.substring(0,3)}****${user.phone.substring(7,11)} - 中国 (CHINA)</p>
                        <div class="social">
                            <a class="icon p-2" href="#" data-bs-toggle="tooltip" title="Facebook"><i class="zmdi zmdi-facebook-box"></i></a>
                            <a class="icon p-2" href="#" data-bs-toggle="tooltip" title="Github"><i class="zmdi zmdi-github-box"></i></a>
                            <a class="icon p-2" href="#" data-bs-toggle="tooltip" title="Linkedin"><i class="zmdi zmdi-linkedin-box"></i></a>
                            <a class="icon p-2" href="#" data-bs-toggle="tooltip" title="Instagram"><i class="zmdi zmdi-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card border-0">
                <ul class="list-group custom list-group-flush">

                    <li class="list-group-item d-flex justify-content-between align-items-center">
                        <span>主题颜色</span>
                        <ul class="choose-skin list-unstyled mb-0">
                            <li data-theme="indigo" data-bs-toggle="tooltip" title="Theme-Indigo"><div class="indigo"></div></li>
                            <li class="active" data-theme="cyan" data-bs-toggle="tooltip" title="Theme-Cyan"><div class="cyan"></div></li>
                            <li data-theme="green" data-bs-toggle="tooltip" title="Theme-Green"><div class="green"></div></li>
                            <li data-theme="blush" data-bs-toggle="tooltip" title="Theme-Blush"><div class="blush"></div></li>
                            <li data-theme="dark" data-bs-toggle="tooltip" title="Theme-Dark"><div class="dark"></div></li>
                        </ul>
                    </li>
                    <li class="list-group-item d-flex justify-content-between align-items-center">
                        <span>桌面通知</span>
                        <label class="c_checkbox">
                            <input type="checkbox" checked="">
                            <span class="checkmark"></span>
                        </label>
                    </li>
                    <li class="list-group-item d-flex justify-content-between align-items-center">
                        <span>声音通知</span>
                        <label class="c_checkbox">
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                    </li>
                    <li class="list-group-item border-0 mt-2">
                        <a class="link" href="#"><i class="zmdi zmdi-chevron-right me-2"></i> 需要帮助吗？联系我们</a>
                    </li>
                    <li class="list-group-item border-0">
                        <a class="link" href="#"><i class="zmdi zmdi-chevron-right me-2"></i> 简体中文（中国）</a>
                    </li>
                </ul>

                <div class="card-body text-center border-top">
                    <button type="button" class="btn btn-secondary">修改个人信息</button>
                </div>
            </div>
        </div>

    </div>
</div>
