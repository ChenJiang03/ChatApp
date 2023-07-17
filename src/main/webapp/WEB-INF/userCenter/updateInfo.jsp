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
            <a class="mb-xl-3 mb-md-2 nav-link" data-bs-toggle="pill" href="#nav-tab-menu" role="tab"><i class="zmdi zmdi-home"></i></a>
            <a class="mb-xl-3 mb-md-2 nav-link" data-bs-toggle="pill" href="#nav-tab-notifications" role="tab"><i class="zmdi zmdi-notifications"></i></a>
            <a class="mb-xl-3 mb-md-2 nav-link d-none d-sm-block flex-grow-1" data-bs-toggle="pill" href="#nav-tab-components" role="tab"><i class="zmdi zmdi-layers"></i></a>
            <a class="mt-xl-3 mt-md-2 nav-link light-dark-toggle" href="javascript:void(0);">
                <i class="zmdi zmdi-brightness-2"></i>
                <input class="light-dark-btn" type="checkbox">
            </a>
            <a class="mt-xl-3 mt-md-2 nav-link d-none d-sm-block" href="settings.html" role="tab"><i class="zmdi zmdi-settings"></i></a>
        </div>

        <button type="submit" class="btn sidebar-toggle-btn shadow-sm"><i class="zmdi zmdi-menu"></i></button>
    </div>


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
                    <input type="text" class="form-control" placeholder="Search...">
                </div>

                <div class="card border-0 text-center pt-3 mb-4">
                    <div class="card-body">
                        <div class="card-user-avatar">
                            <img src="${path}/static/web/images/user.png" alt="avatar" />
                            <button type="button" class="btn btn-secondary btn-sm"><i class="zmdi zmdi-edit"></i></button>
                        </div>
                        <div class="card-user-detail mt-4">
                            <h5>${user.name}</h5>
                            <span class="text-muted"><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="d5b8bcb6bdb0b9b9b0fbb2a7b0b0bb95b2b8b4bcb9fbb6bab8">[email&#160;protected]</a></span>
                            <p>+86 ${user.phone} - 中国 (CHINA)</p>
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

            <div class="tab-pane fade" id="nav-tab-menu" role="tabpanel">

                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h4 class="mb-0 text-primary">Events</h4>
                    <div>
                        <button class="btn btn-dark" type="button">Create New</button>
                    </div>
                </div>

                <div class="form-group input-group-lg search mb-3">
                    <i class="zmdi zmdi-search"></i>
                    <input type="text" class="form-control" placeholder="Search...">
                </div>

                <div class="card mb-1">
                    <div class="card-body">
                        <ul class="menu-list p-0 m-0">
                            <li class="header text-uppercase">Events App</li>
                            <li class="active open"><a href="index.html" class="py-2"><i class="zmdi zmdi-home me-3"></i><span>Dashboard</span></a></li>
                            <li>
                                <a href="javascript:void(0);" class="py-2 menu-toggle"><i class="zmdi zmdi-calendar-check me-3"></i><span>Events</span></a>
                                <ul class="ml-menu border-start ps-2 ms-2">
                                    <li><a href="event-all.html">All Events</a></li>
                                    <li><a href="event-draft.html">Draft Events</a></li>
                                    <li><a href="event-my.html">My Events</a></li>
                                    <li><a href="event-calendar.html">Calendar</a></li>
                                </ul>
                            </li>
                            <li><a href="event-members.html" class="py-2"><i class="zmdi zmdi-accounts-alt me-3"></i><span>Members</span></a></li>
                            <li><a href="event-message.html" class="py-2"><i class="zmdi zmdi-email me-3"></i><span>Message</span></a></li>
                            <li><a href="index-chat.html" class="py-2"><i class="zmdi zmdi-comment-more me-3"></i><span>Chat App</span></a></li>
                            <li class="header text-uppercase mt-3">UPCOMING EVENTS</li>
                            <li><a href="#" class="py-2"><i class="zmdi zmdi-star-outline me-3"></i><span class="text-truncate">Byron Bay Bluesfest</span></a></li>
                            <li><a href="#" class="py-2"><i class="zmdi zmdi-star-outline me-3"></i><span class="text-truncate">DC Environmental Film Festival</span></a></li>
                            <li><a href="#" class="py-2"><i class="zmdi zmdi-star-outline me-3"></i><span class="text-truncate">Vancouver Fashion Week</span></a></li>
                        </ul>
                    </div>
                </div>

                <ul class="chat-list mt-3">
                    <li class="header d-flex justify-content-between ps-3 pe-3 mb-1">
                        <span>event speaker</span>
                        <div class="dropdown">
                            <a class="btn btn-link px-1 py-0 border-0 text-muted dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"><i class="zmdi zmdi-plus-circle"></i></a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="#">Add New</a>
                                <a class="dropdown-item" href="#">Create Group</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </div>
                    </li>
                    <li class="online">
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media align-items-center">
                                    <div class="avatar sm me-3">
                                        <span class="status rounded-circle"></span>
                                        <img class="avatar sm rounded-circle" src="${path}/static/web/images/xs/avatar5.jpg" alt="avatar">
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <h6 class="text-truncate mb-0 me-auto">Jason Porter</h6>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="away">
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media align-items-center">
                                    <div class="avatar sm me-3">
                                        <span class="status rounded-circle"></span>
                                        <img class="avatar sm rounded-circle" src="${path}/static/web/images/xs/avatar1.jpg" alt="avatar">
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <h6 class="text-truncate mb-0 me-auto">Michelle Green</h6>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar sm me-3">
                                        <div class="avatar sm rounded-circle no-image timber">
                                            <span>UD</span>
                                        </div>
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto">UI-Design Group</h6>
                                        </div>
                                        <div class="text-truncate">
                                            <i class="zmdi zmdi-file-text me-1"></i> North Carolina, CT
                                            <div class="avatar-list avatar-list-stacked mt-1">
                                                <img class="avatar xs rounded" src="${path}/static/web/images/xs/avatar5.jpg" alt="" data-bs-toggle="tooltip" data-placement="top" title="Avatar" data-original-title="Sean">
                                                <img class="avatar xs rounded" src="${path}/static/web/images/xs/avatar6.jpg" alt="" data-bs-toggle="tooltip" data-placement="top" title="Avatar" data-original-title="Martin">
                                                <img class="avatar xs rounded" src="${path}/static/web/images/xs/avatar1.jpg" alt="" data-bs-toggle="tooltip" data-placement="top" title="Avatar" data-original-title="Terry">
                                                <img class="avatar xs rounded" src="${path}/static/web/images/xs/avatar4.jpg" alt="" data-bs-toggle="tooltip" data-placement="top" title="Avatar" data-original-title="Michelle">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>

            <div class="tab-pane fade" id="nav-tab-notifications" role="tabpanel">

                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h4 class="mb-0 text-primary">Notifications</h4>
                    <div>
                    </div>
                </div>

                <div class="form-group input-group-lg search mb-3">
                    <i class="zmdi zmdi-search"></i>
                    <input type="text" class="form-control" placeholder="Search...">
                </div>

                <ul class="chat-list animation-li-delay">
                    <li class="header d-flex justify-content-between ps-3 pe-3 mb-1">
                        <span>RECENT</span>
                        <div class="dropdown">
                            <a class="btn btn-link px-1 py-0 border-0 text-muted dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="zmdi zmdi-filter-list"></i></a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar sm me-2">
                                        <img class="avatar sm rounded-circle" src="${path}/static/web/images/xs/avatar5.jpg" alt="avatar">
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto">Jason Porter</h6>
                                            <p class="small text-muted text-nowrap ms-4 mb-0">11:08 am</p>
                                        </div>
                                        <div>changed an issue from "In Progress" to <span class="badge bg-success">Review</span></div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar sm me-2">
                                        <div class="avatar sm rounded-circle no-image timber">
                                            <span>UD</span>
                                        </div>
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto">UI-Design Group</h6>
                                            <p class="small text-muted text-nowrap ms-4 mb-0">11:08 am</p>
                                        </div>
                                        <div>
                                            <i class="zmdi zmdi-file-text me-1"></i> mentioned you in a comment
                                            <blockquote class="blockquote blockquote-sm ps-2 mt-2 mb-0">
                                                Nice work, love! You really nailed it. Keep it up!
                                            </blockquote>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar sm me-2">
                                        <img class="avatar sm rounded-circle" src="${path}/static/web/images/xs/avatar1.jpg" alt="avatar">
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto">Michelle Green</h6>
                                            <p class="small text-muted text-nowrap ms-4 mb-0">1DY</p>
                                        </div>
                                        <div>
                                            joined the Slack group HS Team
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar sm me-2">
                                        <img class="avatar sm rounded-circle" src="${path}/static/web/images/xs/avatar2.jpg" alt="avatar">
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto">Elizabeth Martin</h6>
                                            <p class="small text-muted text-nowrap ms-4 mb-0">4DY</p>
                                        </div>
                                        <div class="text-truncate"><i class="zmdi zmdi-file-text me-1"></i> It is a long established fact that a reader w...</div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar sm me-2">
                                        <div class="avatar sm rounded-circle no-image orange">
                                            <span><i class="zmdi zmdi-check"></i></span>
                                        </div>
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto text-warning">Issue Fixed</h6>
                                            <p class="small text-muted text-nowrap ms-4 mb-0">5DY</p>
                                        </div>
                                        <div>
                                            WE have fix all Design bug with Responsive
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar sm me-2">
                                        <div class="avatar sm rounded-circle no-image red">
                                            <span><i class="zmdi zmdi-help zmdi-hc-lg"></i></span>
                                        </div>
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto text-danger">Server Warning </h6>
                                            <p class="small text-muted text-nowrap ms-4 mb-0">5DY</p>
                                        </div>
                                        <div>
                                            Your connection is not private
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>

            <div class="tab-pane fade" id="nav-tab-components" role="tabpanel">

                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h4 class="mb-0 text-primary">Components</h4>
                </div>

                <div class="card mb-1">
                    <div class="card-body">
                        <ul class="menu-list p-0 m-0">
                            <li class="header">COMPONENTS</li>
                            <li><a class="py-2" href="ui-alerts.html"><i class="zmdi zmdi-alert-circle-o me-3"></i><span>Alerts</span></a></li>
                            <li><a class="py-2" href="ui-badges.html"><i class="zmdi zmdi-label me-3"></i><span>Badges</span></a></li>
                            <li><a class="py-2" href="ui-breadcrumb.html"><i class="zmdi zmdi-label me-3"></i><span>Breadcrumb</span></a></li>
                            <li><a class="py-2" href="ui-buttons.html"><i class="zmdi zmdi-label me-3"></i><span>Buttons</span></a></li>
                            <li><a class="py-2" href="ui-card.html"><i class="zmdi zmdi-label me-3"></i><span>Card's</span></a></li>
                            <li><a class="py-2" href="ui-collapse.html"><i class="zmdi zmdi-label me-3"></i><span>Collapse</span></a></li>
                            <li><a class="py-2" href="ui-colors.html"><i class="zmdi zmdi-format-color-fill me-3"></i><span>Colors</span></a></li>
                            <li><a class="py-2" href="ui-dialogs.html"><i class="zmdi zmdi-label me-3"></i><span>Dialogs</span></a></li>
                            <li><a class="py-2" href="ui-icons.html"><i class="zmdi zmdi-bookmark me-3"></i><span>Icons</span></a></li>
                            <li><a class="py-2" href="ui-listgroup.html"><i class="zmdi zmdi-format-list-bulleted me-3"></i><span>List Group</span></a></li>
                            <li><a class="py-2" href="ui-mediaobject.html"><i class="zmdi zmdi-label me-3"></i><span>Media Object</span></a></li>
                            <li><a class="py-2" href="ui-modals.html"><i class="zmdi zmdi-label me-3"></i><span>Modals</span></a></li>
                            <li><a class="py-2" href="ui-notifications.html"><i class="zmdi zmdi-notifications me-3"></i><span>Notifications</span></a></li>
                            <li><a class="py-2" href="ui-progressbars.html"><i class="zmdi zmdi-circle-o me-3"></i><span>Progress Bars</span></a></li>
                            <li><a class="py-2" href="ui-pagination.html"><i class="zmdi zmdi-format-list-numbered me-3"></i><span>Pagination</span></a></li>
                            <li><a class="py-2" href="ui-scrollspy.html"><i class="zmdi zmdi-label me-3"></i><span>Scrollspy</span></a></li>
                            <li><a class="py-2" href="ui-spinners.html"><i class="zmdi zmdi-spinner me-3"></i><span>Spinners</span></a></li>
                            <li><a class="py-2" href="ui-tabs.html"><i class="zmdi zmdi-tab me-3"></i><span>Tabs</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="rightbar d-none d-md-block">

        <div class="nav flex-column nav-pills border-start py-xl-4 py-3 h-100">
            <a class="nav-link mb-2 text-center rightbar-link" data-bs-toggle="pill" href="#tab-calendar"><i class="zmdi zmdi-calendar"></i></a>
            <a class="nav-link mb-2 text-center rightbar-link" data-bs-toggle="pill" href="#tab-note"><i class="zmdi zmdi-lamp"></i></a>
            <a class="nav-link mb-2 text-center rightbar-link" data-bs-toggle="pill" href="#tab-task"><i class="zmdi zmdi-comment-edit"></i></a>
            <a class="nav-link mb-2 text-center rightbar-link" data-bs-toggle="pill" href="#tab-github"><i class="zmdi zmdi-github"></i></a>
            <a class="nav-link mb-2 text-center" href="#"><i class="zmdi zmdi-plus"></i></a>
        </div>
        <div class="tab-content py-xl-4 py-3 px-xl-4 px-3">

            <div class="tab-pane fade" id="tab-calendar" role="tabpanel">
                <div class="header border-bottom pb-4 d-flex justify-content-between">
                    <div>
                        <h6 class="mb-0 fw-bold">Calendar</h6>
                        <span class="text-muted">Update your profile details</span>
                    </div>
                    <div>
                        <button class="btn btn-link close-sidebar text-muted" type="button"><i class="zmdi zmdi-close"></i></button>
                    </div>
                </div>
                <div class="body mt-4">
                    <div id="mini-calendar"></div>
                </div>
            </div>

            <div class="tab-pane fade" id="tab-note" role="tabpanel">
                <div class="header border-bottom pb-4 d-flex justify-content-between">
                    <div>
                        <h6 class="mb-0 fw-bold">My Notes</h6>
                        <span class="text-muted">Update your profile details</span>
                    </div>
                    <div>
                        <button class="btn btn-link close-sidebar text-muted" type="button"><i class="zmdi zmdi-close"></i></button>
                    </div>
                </div>
                <div class="body mt-4">
                    <div class="add-note">
                        <form>
                            <div class="input-group mb-2">
                                <textarea rows="3" class="form-control" placeholder="Enter a note here.."></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary addnote">Add</button>
                        </form>
                        <ul class="list-unstyled mt-4">
                            <li class="card border-0 mb-2">
                                <span>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</span>
                                <button class="btn btn-sm btn-link"><i class="zmdi zmdi-delete text-danger"></i></button>
                            </li>
                            <li class="card border-0 mb-2">
                                <span>Contrary to popular belief, Lorem Ipsum is not simply random text.</span>
                                <button class="btn btn-sm btn-link"><i class="zmdi zmdi-delete text-danger"></i></button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="tab-pane fade" id="tab-task" role="tabpanel">
                <div class="header border-bottom pb-4 d-flex justify-content-between">
                    <div>
                        <h6 class="mb-0 fw-bold">My Task List</h6>
                        <span class="text-muted">Update your profile details</span>
                    </div>
                    <div>
                        <button class="btn btn-link close-sidebar text-muted" type="button"><i class="zmdi zmdi-close"></i></button>
                    </div>
                </div>
                <div class="body mt-4">
                    <div class="todo-list">
                        <ul class="list-unstyled todo-list-items">
                            <li>
                                <label class="c_checkbox">
                                    <input type="checkbox">
                                    <span class="checkmark"></span>
                                    <span class="ms-2">Update new code on github</span>
                                </label>
                                <button class="btn btn-sm btn-link" type="submit"><i class="zmdi zmdi-delete"></i></button>
                            </li>
                            <li>
                                <label class="c_checkbox">
                                    <input type="checkbox">
                                    <span class="checkmark"></span>
                                    <span class="ms-2">Meeting with design team and updates</span>
                                </label>
                                <button class="btn btn-sm btn-link" type="submit"><i class="zmdi zmdi-delete"></i></button>
                            </li>
                            <li>
                                <label class="c_checkbox">
                                    <input type="checkbox">
                                    <span class="checkmark"></span>
                                    <span class="ms-2">Send project zip file to developer</span>
                                </label>
                                <button class="btn btn-sm btn-link" type="submit"><i class="zmdi zmdi-delete"></i></button>
                            </li>
                            <li>
                                <label class="c_checkbox">
                                    <input type="checkbox">
                                    <span class="checkmark"></span>
                                    <span class="ms-2">Create new design psd for onepage</span>
                                </label>
                                <button class="btn btn-sm btn-link" type="submit"><i class="zmdi zmdi-delete"></i></button>
                            </li>
                        </ul>
                        <form class="add-items">
                            <div class="input-group mb-2">
                                <textarea rows="3" class="form-control" placeholder="What do you need to do today?"></textarea>
                            </div>
                            <button class="add btn btn-primary" type="submit">Add to List</button>
                        </form>
                    </div>
                </div>
            </div>

            <div class="tab-pane fade" id="tab-github" role="tabpanel">
                <div class="header border-bottom pb-4 d-flex justify-content-between">
                    <div>
                        <h6 class="mb-0 fw-bold">My Github Activity</h6>
                        <span class="text-muted">puffintheme</span>
                    </div>
                    <div>
                        <button class="btn btn-link close-sidebar text-muted" type="button"><i class="zmdi zmdi-close"></i></button>
                    </div>
                </div>
                <div class="body mt-4">
                    <div class="card mb-4">
                        <div class="card-body">
                            <div class="row align-items-center">
                                <div class="col">
                                    <div class="d-flex align-items-center">
                                        <img src="${path}/static/web/images/xs/avatar6.jpg" data-bs-toggle="tooltip" title="" alt="Avatar" class="rounded-circle avatar" data-original-title="Avatar Name">
                                        <div class="ms-3">
                                            <a href="#" title="">Michelle Green</a>
                                            <p class="mb-0"><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="c7aaaea4afa2ababa2e9a0b5a2a2a987a2bfa6aab7aba2e9a4a8aa">[email&#160;protected]</a></p>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-auto">
                                    <div class="dropdown">
                                        <a href="#" class="btn btn-link btn-sm dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-haspopup="true" data-expanded="false">
                                            <i class="zmdi zmdi-more-vert zmdi-hc-lg"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a href="#!" class="dropdown-item">Action</a>
                                            <a href="#!" class="dropdown-item">Another action</a>
                                            <a href="#!" class="dropdown-item">Something else here</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mt-3 mb-3">
                                <textarea rows="3" class="form-control no-resize" placeholder="Please type what you want..."></textarea>
                            </div>
                            <div class="align-right">
                                <button class="btn btn-primary">Push</button>
                                <button class="btn btn-link"><i class="zmdi zmdi-attachment text-muted"></i></button>
                                <button class="btn btn-link"><i class="zmdi zmdi-camera text-muted"></i></button>
                                <button class="btn btn-link"><i class="zmdi zmdi-mood text-muted"></i></button>
                            </div>
                        </div>
                    </div>
                    <ol class="activity-feed p-0 ms-3 mb-0 pt-5">
                        <li class="feed-item d-flex mb-3 pl-lg-4 ps-3" data-content="" data-time="5 hours ago" data-color="yellow">
                            <div class="card mb-3">
                                <div class="card-body">
                                    <input type="checkbox" id="expand_1" name="expand_1">
                                    <label for="expand_1" class="mb-0">
                                        <b>Request</b> code merge in git
                                    </label>
                                    <div class="feed-content">
                                        <p><b>comments</b> Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="feed-item d-flex mb-3 pl-lg-4 ps-3" data-content="" data-time="7 hours ago" data-color="green">
                            <div class="card mb-3">
                                <div class="card-body">
                                    <input type="checkbox" id="expand_2" name="expand_2">
                                    <label for="expand_2" class="mb-0">
                                        <b>Update</b> React app login page code
                                    </label>
                                    <div class="feed-content">
                                        <p><b>comments</b> Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="feed-item d-flex mb-3 pl-lg-4 ps-3" data-content="" data-time="December 2020" data-color="green">
                            <div class="card mb-3">
                                <div class="card-body">
                                    <input type="checkbox" id="expand_3" name="expand_3">
                                    <label for="expand_3" class="mb-0">
                                        2 contributions in private repositories
                                    </label>
                                    <div class="feed-content">
                                        <span><a href="#">puffintheme/Allima-v0.1</a> 12 commits</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="feed-item d-flex mb-3 pl-lg-4 ps-3" data-content="" data-time="December 2020" data-color="dark">
                            <div class="card mb-3">
                                <div class="card-body">
                                    <input type="checkbox" id="expand_4" name="expand_4">
                                    <label for="expand_4" class="mb-0">
                                        <b>PostMan</b> Create a new project
                                    </label>
                                    <div class="feed-content">
                                        <h2>BOOM!</h2>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ol>
                </div>
            </div>
        </div>
    </div>


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
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#setting-billing" role="tab">支付方式</a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#setting-members" role="tab">会员</a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#setting-security" role="tab">隐私与安全</a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#setting-faqs" role="tab">问题</a></li>
                            </ul>
                        </div>
                    </div>

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

                                            <form class="row g-3">
                                                <div class="col-lg-4 col-md-6 col-sm-12">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <input type="text" class="form-control form-control-lg" placeholder="请输入你的名字">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4 col-md-6 col-sm-12">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <input type="text" class="form-control form-control-lg" placeholder="请输入电话">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4 col-md-6 col-sm-12">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <input type="text" class="form-control form-control-lg" placeholder="请输入邮箱">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4 col-md-6 col-sm-12">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <input type="text" class="form-control form-control-lg" placeholder="脸书账号链接网址">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4 col-md-6 col-sm-12">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <input type="text" class="form-control form-control-lg" placeholder="Instagram账号链接网址">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4 col-md-6 col-sm-12">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <input type="text" class="form-control form-control-lg" placeholder="脸书账号链接网址">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="form-group">
                                                        <label>选择头像</label>
                                                        <input type="file" class="form-control-file">
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <textarea rows="4" class="form-control" placeholder="请输入个人简介"></textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <button type="button" class="btn btn-primary">Update Details</button>
                                                    <button type="button" class="btn btn-link">Cancel</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row justify-content-between mt-4">
                                <div class="col-12 col-md-6">
                                    <h5>Delete your account</h5>
                                    <p class="text-muted mb-md-0">Please note, deleting your account is a permanent action and will no be recoverable once completed.</p>
                                </div>
                                <div class="col-auto">
                                    <button class="btn btn-danger">Delete</button>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="setting-billing" role="tabpanel">
                            <div class="row">
                                <div class="col-12">
                                    <div class="alert alert-danger">
                                        <i class="zmdi zmdi-info me-1"></i> You are near your API limits.
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">

                                    <div class="card mb-4">
                                        <div class="card-body">
                                            <div class="row align-items-center">
                                                <div class="col">
                                                    <h6 class="text-uppercase text-muted mb-1 small">Current plan</h6>
                                                    <span class="h3 mb-0">$39/mo</span>
                                                </div>
                                                <div class="col-auto">
                                                    <a class="btn btn-sm btn-dark" href="pricing.html">Upgrade</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12">

                                    <div class="card mb-4">
                                        <div class="card-header">
                                            <div class="row align-items-center">
                                                <div class="col">

                                                    <h6 class="card-title mb-0">Payment methods</h6>
                                                </div>
                                                <div class="col-auto">

                                                    <a class="btn btn-sm btn-primary" href="#!">Add method</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body">

                                            <div class="list-group custom list-group-flush my-2">
                                                <div class="list-group-item">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <img class="img-fluid" src="${path}/static/web/images/visa.svg" alt="..." style="max-width: 38px;">
                                                        </div>
                                                        <div class="col ml-n2">
                                                            <h6 class="mb-0">Visa ending in 2222</h6>
                                                            <small class="text-muted">Expires 05/2023</small>
                                                        </div>
                                                        <div class="col-auto mr-n3">
                                                            <span class="badge bg-light">Default</span>
                                                        </div>

                                                        <div class="col-auto">
                                                            <div class="dropdown">
                                                                <a class="dropdown-ellipses dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                    <i class="zmdi zmdi-more"></i>
                                                                </a>
                                                                <div class="dropdown-menu dropdown-menu-right">
                                                                    <a class="dropdown-item" href="#!">Action</a>
                                                                    <a class="dropdown-item" href="#!">Another action</a>
                                                                    <a class="dropdown-item" href="#!">Something else here</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="list-group-item">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <img class="img-fluid" src="${path}/static/web/images/mastercard.svg" alt="..." style="max-width: 38px;">
                                                        </div>
                                                        <div class="col ml-n2">
                                                            <h6 class="mb-0">Mastercard ending in 9999</h6>
                                                            <small class="text-muted">Expires 10/2026</small>
                                                        </div>

                                                        <div class="col-auto">
                                                            <div class="dropdown">
                                                                <a class="dropdown-ellipses dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                    <i class="zmdi zmdi-more"></i>
                                                                </a>
                                                                <div class="dropdown-menu dropdown-menu-right">
                                                                    <a class="dropdown-item" href="#!">Action</a>
                                                                    <a class="dropdown-item" href="#!">Another action</a>
                                                                    <a class="dropdown-item" href="#!">Something else here</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card">
                                        <div class="card-body">
                                            <h6 class="card-title mb-0">Invoices</h6>
                                        </div>
                                        <div class="table-responsive">
                                            <table class="table table-border table-hover table-nowrap card-table mb-0">
                                                <thead>
                                                <tr>
                                                    <th>Invoice ID</th>
                                                    <th>Date</th>
                                                    <th>Amount</th>
                                                    <th>Status</th>
                                                </tr>
                                                </thead>
                                                <tbody class="font-size-base">
                                                <tr>
                                                    <td>
                                                        <a href="invoices.html">Invoice #10022</a>
                                                    </td>
                                                    <td>
                                                        <time datetime="2020-04-24">Oct. 24, 2020</time>
                                                    </td>
                                                    <td>
                                                        $29.00
                                                    </td>
                                                    <td>
                                                        <span class="badge bg-secondary">Outstanding</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="invoices.html">Invoice #10012</a>
                                                    </td>
                                                    <td>
                                                        <time datetime="2020-03-24">Aug. 11, 2020</time>
                                                    </td>
                                                    <td>
                                                        $29.00
                                                    </td>
                                                    <td>
                                                        <span class="badge bg-success">Paid</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="invoices.html">Invoice #10043</a>
                                                    </td>
                                                    <td>
                                                        <time datetime="2020-02-24">July. 5, 2020</time>
                                                    </td>
                                                    <td>
                                                        $29.00
                                                    </td>
                                                    <td>
                                                        <span class="badge bg-success">Paid</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="invoices.html">Invoice #10045</a>
                                                    </td>
                                                    <td>
                                                        <time datetime="2020-01-24">Jun. 16, 2020</time>
                                                    </td>
                                                    <td>
                                                        $29.00
                                                    </td>
                                                    <td>
                                                        <span class="badge bg-success">Paid</span>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <p class="mt-4">
                                <small class="text-muted">Don’t need Dashkit anymore? <a href="#!">Cancel your account</a></small>
                            </p>
                        </div>

                        <div class="tab-pane fade" id="setting-members" role="tabpanel">
                            <div class="row">
                                <div class="col-12 col-md-6">

                                    <div class="card mb-4">
                                        <div class="card-body">
                                            <div class="row align-items-center">
                                                <div class="col">
                                                    <p class="text-uppercase text-muted small mb-1">Seats used</p>
                                                    <span class="h4 mb-0">4 out of 6</span>
                                                </div>
                                                <div class="col-auto">
                                                    <a class="btn btn-sm btn-outline-primary" href="#!">Upgrade</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">

                                    <div class="card mb-4">
                                        <div class="card-body">
                                            <div class="row align-items-center">
                                                <div class="col">
                                                    <p class="text-uppercase text-muted small mb-1">Default role</p>
                                                    <span class="h4 mb-0">Staff</span>
                                                </div>
                                                <div class="col-auto">
                                                    <a class="btn btn-sm btn-dark" href="#!">Change</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">

                                    <div class="card">
                                        <div class="card-header d-flex justify-content-between">
                                            <h6 class="card-title">Members</h6>

                                            <div class="dropdown">
                                                <button class="btn btn-sm btn-primary" type="button" data-bs-toggle="dropdown">
                                                    Invite member
                                                </button>
                                                <form class="dropdown-menu dropdown-menu-right" style="width: 300px;">
                                                    <div class="card-header">
                                                        <h6 class="card-title mb-0">Invite a member</h6>
                                                        <span class="badge bg-primary">2 seats left</span>
                                                    </div>
                                                    <div class="card-header">
                                                        <div class="row no-gutters align-items-center">
                                                            <div class="col-3">
                                                                <label class="mb-0">Name</label>
                                                            </div>
                                                            <div class="col">
                                                                <input class="form-control form-control-flush" type="text" placeholder="Full name">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="card-header">
                                                        <div class="row no-gutters align-items-center">
                                                            <div class="col-3">
                                                                <label class="mb-0">Email</label>
                                                            </div>
                                                            <div class="col">
                                                                <input class="form-control form-control-flush" type="text" placeholder="Email address">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="card-footer">

                                                        <button class="btn btn-block btn-primary" type="submit">
                                                            Invite member
                                                        </button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="card-body">

                                            <div class="list-group custom list-group-flush my-md-3">
                                                <div class="list-group-item">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <a href="#" class="avatar"><img src="${path}/static/web/images/xs/avatar1.jpg" alt="..." class="avatar rounded-circle"></a>
                                                        </div>
                                                        <div class="col-5 ms-2">
                                                            <h6 class="mb-1"><a href="#">Dianna Smiley</a></h6>
                                                            <p class="small text-muted mb-0">
                                                                <a class="d-block text-reset text-truncate" href="mailt:amelia.green@company.com"><span class="__cf_email__" data-cfemail="fa9b979f96939bd49d889f9f94ba9995978a9b9483d4999597">[email&#160;protected]</span></a>
                                                            </p>
                                                        </div>
                                                        <div class="col-auto ms-auto mr-md-3">
                                                            <select class="form-control custom-select" data-bs-toggle="select">
                                                                <option value="1">Admin</option>
                                                                <option value="2">Staff</option>
                                                                <option value="3">Custom</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-auto">
                                                            <div class="dropdown">
                                                                <a class="btn dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                    <i class="zmdi zmdi-more"></i>
                                                                </a>
                                                                <div class="dropdown-menu dropdown-menu-right">
                                                                    <a class="dropdown-item" href="#!">Action</a>
                                                                    <a class="dropdown-item" href="#!">Another action</a>
                                                                    <a class="dropdown-item" href="#!">Something else here</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="list-group-item">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <a href="#" class="avatar"><img src="${path}/static/web/images/xs/avatar2.jpg" alt="..." class="avatar rounded-circle"></a>
                                                        </div>
                                                        <div class="col-5 ms-2">
                                                            <h6 class="mb-1"><a href="#">Dianna Smiley</a></h6>
                                                            <p class="small text-muted mb-0">
                                                                <a class="d-block text-reset text-truncate" href="mailt:charlotte.green@company.com"><span class="__cf_email__" data-cfemail="f3909b92819f9c878796dd948196969db3909c9e83929d8add909c9e">[email&#160;protected]</span></a>
                                                            </p>
                                                        </div>
                                                        <div class="col-auto ms-auto mr-md-3">
                                                            <select class="form-control custom-select" data-bs-toggle="select">
                                                                <option value="1">Admin</option>
                                                                <option value="2">Staff</option>
                                                                <option value="3">Custom</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-auto">
                                                            <div class="dropdown">
                                                                <a class="btn dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                    <i class="zmdi zmdi-more"></i>
                                                                </a>
                                                                <div class="dropdown-menu dropdown-menu-right">
                                                                    <a class="dropdown-item" href="#!">Action</a>
                                                                    <a class="dropdown-item" href="#!">Another action</a>
                                                                    <a class="dropdown-item" href="#!">Something else here</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="list-group-item">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <a href="#" class="avatar"><img src="${path}/static/web/images/xs/avatar3.jpg" alt="..." class="avatar rounded-circle"></a>
                                                        </div>
                                                        <div class="col-5 ms-2">
                                                            <h6 class="mb-1"><a href="#">Dianna Smiley</a></h6>
                                                            <p class="small text-muted mb-0">
                                                                <a class="d-block text-reset text-truncate" href="mailt:susie.willis@company.com"><span class="__cf_email__" data-cfemail="d3a0a6a0bab6fda4babfbfbaa093b0bcbea3b2bdaafdb0bcbe">[email&#160;protected]</span></a>
                                                            </p>
                                                        </div>
                                                        <div class="col-auto ms-auto mr-md-3">
                                                            <select class="form-control custom-select" data-bs-toggle="select">
                                                                <option value="1">Admin</option>
                                                                <option value="2">Staff</option>
                                                                <option value="3">Custom</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-auto">
                                                            <div class="dropdown">
                                                                <a class="btn dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                    <i class="zmdi zmdi-more"></i>
                                                                </a>
                                                                <div class="dropdown-menu dropdown-menu-right">
                                                                    <a class="dropdown-item" href="#!">Action</a>
                                                                    <a class="dropdown-item" href="#!">Another action</a>
                                                                    <a class="dropdown-item" href="#!">Something else here</a>
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

                        <div class="tab-pane fade" id="setting-security" role="tabpanel">
                            <div class="row justify-content-between mb-4">
                                <div class="col-12 col-md-6">
                                    <h5>Change your password</h5>
                                    <p class="text-muted mb-md-0">We will email you a confirmation when changing your password, so please expect that email after submitting.</p>
                                </div>
                                <div class="col-auto">
                                    <button class="btn btn-warning">Forgot your password?</button>
                                </div>
                            </div>
                            <div class="row g-3">
                                <div class="col-12">

                                    <div class="card mb-4">
                                        <div class="card-body">
                                            <form class="row">
                                                <div class="col-lg-4 col-md-12">
                                                    <div class="form-group mb-3">
                                                        <label>Current password</label>
                                                        <input type="email" class="form-control">
                                                    </div>
                                                    <div class="form-group mb-3">
                                                        <label>New password</label>
                                                        <input type="email" class="form-control">
                                                    </div>
                                                    <div class="form-group mb-3">
                                                        <label>Confirm password</label>
                                                        <input type="email" class="form-control">
                                                    </div>
                                                    <button type="button" class="btn btn-primary">Update Password</button>
                                                    <button type="button" class="btn btn-link">Cancel</button>
                                                </div>
                                                <div class="col-lg-8 col-md-12">

                                                    <div class="card bg-light border">
                                                        <div class="card-body">
                                                            <p class="mb-2">Password requirements</p>
                                                            <p class="small text-muted mb-2">To create a new password, you have to meet all of the following requirements:</p>

                                                            <ul class="small text-muted ps-4 mb-0">
                                                                <li>Minimum 8 character</li>
                                                                <li>At least one special character</li>
                                                                <li>At least one number</li>
                                                                <li>Can’t be the same as a previous password</li>
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
                                    <h5>Device History</h5>
                                    <p class="text-muted mb-md-0">If you see a device here that you believe wasn’t you, please contact our account fraud department immediately.</p>
                                </div>
                                <div class="col-auto">
                                    <button class="btn btn-dark">Log out all devices</button>
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

                        <div class="tab-pane fade" id="setting-faqs" role="tabpanel">
                            <div class="row">
                                <div class="col-lg-3 col-md-12">
                                    <div class="mb-4">
                                        <h6>Useful tips</h6>
                                        <p class="text-muted">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt.</p>
                                        <div class="list-group custom">
                                            <a class="list-group-item" href="#"><i class="zmdi zmdi-circle small me-2 text-danger"></i>Lorem ipsum</a>
                                            <a class="list-group-item" href="#"><i class="zmdi zmdi-circle small me-2 text-info"></i>Consectetuer adipiscing</a>
                                            <a class="list-group-item" href="#"><i class="zmdi zmdi-circle small me-2 text-primary"></i>Sed diam nonummy</a>
                                            <a class="list-group-item" href="#"><i class="zmdi zmdi-circle small me-2 text-warning"></i>Euismod tincidunt</a>
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <h6>Can't find the answer? </h6>
                                        <p class="text-muted">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt.</p>
                                        <a href="#" class="btn btn-primary">Contact us</a>
                                    </div>
                                </div>
                                <div class="col-lg-9 col-md-12">

                                    <div class="card">
                                        <div class="card-body">
                                            <h6>General</h6>
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

                                            <h6 class="pad-all bord-btm text-thin">Payment</h6>
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
