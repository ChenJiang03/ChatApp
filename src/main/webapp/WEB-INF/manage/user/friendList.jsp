<%--
  Created by IntelliJ IDEA.
  User: Nancy
  Date: 2023/8/4
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<c:set var="friendList" value="${requestScope.friendList}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户好友列表</title>
    <link rel="stylesheet" type="text/css" href="${path}/static/manage/css/css.css"/>
    <script type="text/javascript" src="${path}/static/manage/js/jquery.min.js"></script>
    <script type="text/javascript" src="${path}/static/manage/jsFunctions/chooseAllAndDelete.js"></script>
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

    .userImg {
        width: 70px;
    }

</style>
<body>
<div id="pageAll">
    <div class="pageTop">
        <div class="page">
            <img src="${path}/static/manage/img/coin02.png"/><span>用户管理&nbsp;-</span>&nbsp;用户好友列表
        </div>
    </div>

    <div class="page">
        <!-- user页面样式 -->
        <div class="connoisseur">
            <!-- user 表格 显示 -->
            <div class="conShow">
                <table border="1" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="30px" class="tdColor tdC"><input class="allChoose" type="checkbox"></td>
                        <td width="70px" class="tdColor tdC">id</td>
                        <td width="100px" class="tdColor tdC">头像</td>
                        <td width="150px" class="tdColor">用户名</td>
                        <td width="100px" class="tdColor">昵称</td>
                        <td width="150px" class="tdColor">电话号码</td>
                        <td width="300px" class="tdColor">操作</td>
                    </tr>
                    <c:forEach items="${friendList.list}" var="friend">
                        <tr height="40px" id="tr_${friend.id}">
                            <td><input type="checkbox" class="check" data-id="${friend.id}"></td>
                            <td>${friend.id}</td>
                            <td>
                                <c:if test="${friend.picture eq null}" var="flag">
                                    <img src="${path}/static/web/images/user.png" alt="avatar" class="userImg"/>
                                </c:if>
                                <c:if test="${not flag}">
                                    <img src="${path}/static/uploadImages/${friend.picture}" class="userImg" alt="">
                                </c:if>

                            </td>
                            <td>${friend.username}</td>
                            <td>${friend.name}</td>
                            <td>${friend.phone}</td>
                            <td>
                                <a href="${path}/manage/user/detail?id=${friend.id}">
                                    查看详情
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

</div>

<!-- 删除弹出框  end-->
</body>
</html>
