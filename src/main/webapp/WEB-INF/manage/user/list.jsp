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
<c:set var="userList" value="${requestScope.userList}"></c:set>
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
    #PageNum{ text-align:center; padding-top:50px;}
    #PageNum li{ text-align:center; display:inline-block; padding:0px 5px;}
    #PageNum li a{ display:block; background-color:whitesmoke; height:30px; line-height:30px; vertical-align:middle; font-size:12px; padding:0px 10px;-moz-border-radius: 30px; -webkit-border-radius: 30px;border-radius:30px; text-decoration:none; color:#333;}
    #PageNum li a:hover{ background-color:#eb6d48; color:whitesmoke;}

</style>
<body>
<div id="pageAll">
    <div class="pageTop">
        <div class="page">
            <img src="${path}/static/manage/img/coin02.png"/><span><a href="#">首页</a>&nbsp;-&nbsp;-</span>&nbsp;管理员管理
        </div>
    </div>

    <div class="page">
        <!-- user页面样式 -->
        <div class="connoisseur">
            <!-- user 表格 显示 -->
            <div class="conShow">
                <table border="1" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="66px" class="tdColor tdC">序号</td>
                        <td width="435px" class="tdColor">会员等级</td>
                        <td width="400px" class="tdColor">用户名</td>
                        <td width="630px" class="tdColor">添加时间</td>
                        <td width="130px" class="tdColor">操作</td>
                    </tr>
                    <tr height="40px">
                        <td>1</td>
                        <td>运营专员</td>
                        <td>山下就只</td>
                        <td>2015-25-36 12:12</td>
                        <td><a href="useradd.html">
                            <img class="operation" src="${path}/static/manage/img/update.png"></a>
                            <img class="operation delban" src="${path}/static/manage/img/delete.png">
                        </td>
                    </tr>
                </table>
            </div>
            <!-- user 表格 显示 end-->
        </div>
        <!-- user页面样式end -->
    </div>

    <ul id="PageNum">
        <li><a href="#">首页</a></li>
        <li><a href="${path}/manage/user/list?pageNum=${requestScope}">上一页</a></li>
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
        <li><a href="#">6</a></li>
        <li><a href="#">下一页</a></li>
        <li><a href="#">尾页</a></li>
    </ul>
</div>

<!-- 删除弹出框  end-->
</body>
</html>
