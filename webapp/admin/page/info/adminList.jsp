<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="utf-8">
<title>企业列表</title>
<link href="${pageContext.request.contextPath}/admin/css/manageadmin.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="place"> <span>位置：</span>
  <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">用户列表</a></li>
  </ul>
</div>
<div class="rightinfo">
  <div class="tools">
    <ul class="toolbar">
      <li class="click"><span><img src="${pageContext.request.contextPath}/admin/images/t01.png" /></span><a href="${pageContext.request.contextPath}/admin/page/info/adminAdd.jsp">添加</a></li>
      <li class="click"><span><img src="${pageContext.request.contextPath}/admin/images/t02.png" /></span><a href="userAdd.html">修改</a></li>
      <li><span><img src="${pageContext.request.contextPath}/admin/images/t03.png" /></span><a href="userDelete.html">删除</a></li>
    </ul>
    <iframe src="${pageContext.request.contextPath}/admin/page/info/adminSearch.jsp" scrolling="no" frameborder="0" width="400" height="42"></iframe>
  </div>
  <table class="imgtable">
    <thead>
      <tr>
        <th ><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>用户登录名</th>
        <th>用户真实姓名</th>
        <th>用户Email</th>
        <th>用户角色</th>
        <th>用户状态</th>
        <th>操作</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${adminList}" var="admin">
      <tr height="50px">
        <td ><input name="" type="checkbox" value="" /></td>
        <td>${admin.adminLogin}</td>
        <td>${admin.adminName}</td>
        <td>${admin.adminEmail}</td>
        <td>${admin.adminRole}</td>
        <c:if test="${admin.adminStatus==0}">
          <td>启用</td>
        </c:if>
        <c:if test="${admin.adminStatus==1}">
          <td>禁用</td>
        </c:if>
        <td ><a href="${pageContext.request.contextPath}/findAdminById?adminId=${admin.adminId}" class="tablelink">修改</a> &nbsp;&nbsp;
          <c:if test="${admin.adminStatus==0}">
            <a href="${pageContext.request.contextPath}/updateAdminStatus?adminId=${admin.adminId}&adminStatus=1" class="tablelink"> 禁用</a>
        </c:if>
          <c:if test="${admin.adminStatus==1}">
            <a href="${pageContext.request.contextPath}/updateAdminStatus?adminId=${admin.adminId}&adminStatus=0" class="tablelink"> 启用</a>
          </c:if>

        </td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
  <div class="pagin">
    <div class="message">共<i class="blue">1</i>页，当前显示第&nbsp;<i class="blue">1&nbsp;</i>页</div>
    <ul class="paginList">
      <li class="paginItem"><a href="javascript:;">首页</a></li>
      <li class="paginItem"><a href="javascript:;">上一页<span class="pagepre"></span></a></li>
      <li class="paginItem"><a href="javascript:;">下一页<span class="pagenxt"></span></a></li>
       <li class="paginItem"><a href="javascript:;">尾页</a></li>
    </ul>
  </div>
</div>
</body>
</html>
