<%--
  Created by IntelliJ IDEA.
  User: Nancy
  Date: 2023/7/31
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<c:set var="managerPageInfo" value="${requestScope.managerPageInfo}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>管理员管理</title>
    <link rel="stylesheet" type="text/css" href="${path}/static/manage/css/css.css"/>
    <script type="text/javascript" src="${path}/static/manage/js/jquery.min.js"></script>
    <!-- <script type="text/javascript" src="js/page.js" ></script> -->
</head>
<style type="text/css">
    #PageNum {
        text-align: center;
        padding-top: 50px;
    }

    #PageNum li {
        text-align: center;
        display: inline-block;
        padding: 0px 5px;
    }

    #PageNum li a {
        display: block;
        background-color: whitesmoke;
        height: 30px;
        line-height: 30px;
        vertical-align: middle;
        font-size: 12px;
        padding: 0px 10px;
        -moz-border-radius: 30px;
        -webkit-border-radius: 30px;
        border-radius: 30px;
        text-decoration: none;
        color: #333;
    }

    #PageNum li a:hover {
        background-color: #eb6d48;
        color: whitesmoke;
    }

    .userbtn {
        margin-left: 10px;
        margin-top: 10px;
        width: 130px;
        height: 30px;
        border: none;
        font-size: 15px;
        color: #fff;
        background-color: lightseagreen;
    }

</style>
<body>
<div id="pageAll">
    <div class="pageTop">
        <div class="page">
            <img src="${path}/static/manage/img/coin02.png"/><span>管理员管理&nbsp;-</span>&nbsp;管理员列表
        </div>
    </div>

    <div class="page">
        <!-- user页面样式 -->
        <div class="connoisseur">
            <a href="${path}/manage/manager/add">
                <button class="userbtn">新增管理员</button>
            </a>
            <a href="">
                <button class="userbtn">批量删除</button>
            </a>
            <!-- user 表格 显示 -->
            <div class="conShow">
                <table border="1" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="66px" class="tdColor tdC">id</td>
                        <td width="435px" class="tdColor">用户名</td>
                        <td width="400px" class="tdColor">密码</td>
                        <td width="630px" class="tdColor">昵称</td>
                        <td width="130px" class="tdColor">操作</td>
                    </tr>
                    <c:forEach items="${managerPageInfo.list}" var="manager">
                        <tr height="40px">
                            <td>${manager.id}</td>
                            <td>${manager.username}</td>
                            <td>********</td>
                            <td>${manager.name}</td>
                            <td>
                                <a href="${path}/manage/manager/update?id=${manager.id}">
                                    <img class="operation" src="${path}/static/manage/img/update.png">
                                </a>
                                <a href="">
                                    <img class="operation delban" src="${path}/static/manage/img/delete.png">
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <!-- user 表格 显示 end-->
        </div>
        <!-- user页面样式end -->
    </div>

    <ul id="PageNum">
        <li><a href="${path}/manage/manager/list?pageNum=1">首页</a></li>
        <li><a href="${path}/manage/manager/list?pageNum=${managerPageInfo.prePage}">上一页</a></li>
        <c:forEach items="${managerPageInfo.navigatepageNums}" var="i">
            <li><a href="${path}/manage/manager/list?pageNum=${i}">${i}</a></li>
        </c:forEach>
        <li><a href="${path}/manage/manager/list?pageNum=${managerPageInfo.nextPage}">下一页</a></li>
        <li><a href="${path}/manage/manager/list?pageNum=${managerPageInfo.pages}">尾页</a></li>
        <li>第${managerPageInfo.pageNum}页 / 共${managerPageInfo.pages}页</li>
    </ul>
</div>

<!-- 删除弹出框  end-->
</body>
</html>
