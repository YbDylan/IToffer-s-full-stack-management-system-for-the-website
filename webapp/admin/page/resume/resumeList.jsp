<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>简历列表</title>
<link href="${pageContext.request.contextPath}/admin/css/manageadmin.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="place"> <span>位置：</span>
  <ul class="placeul">
    <li><a href="${pageContext.request.contextPath}/admin/page/main/index.jsp">首页</a></li>
    <li>简历列表</li>
  </ul>
</div>
<div class="rightinfo">
  <div class="tools">
    <ul class="toolbar">
      <li><span><img src="${pageContext.request.contextPath}/admin/images/t03.png" /></span><a href="#">删除</a></li>
    </ul>
  </div>
  <table class="imgtable">
    <thead>
      <tr>
        <th ><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>姓名</th>
        <th>手机</th>
        <th>Email</th>
        <th>工作经验</th>
        <th>求职意向</th>
        <th>操作</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${userlist}" var="user">
      <tr height="50px">
        <td ><input name="" type="checkbox" value="" /></td>
        <td>${user.userName}</td>
        <td>${user.userPhone}</td>
        <td>${user.userEmail}</td>
        <td>${user.userYear}</td>
        <td>${user.userWork}</td>
        <td ><a href="${pageContext.request.contextPath}/resumeView?userid=${user.userId}" class="tablelink">查看</a> &nbsp;&nbsp;<a href="#" class="tablelink"> 删除</a></td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
 <div class="pagin">
    <div class="message">共<i class="blue">1256</i>页，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
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
