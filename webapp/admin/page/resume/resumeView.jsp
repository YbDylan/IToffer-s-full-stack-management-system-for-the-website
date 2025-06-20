<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>简历详情</title>
<link href="${pageContext.request.contextPath}/admin/css/manageadmin.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="place"> <span>位置：</span>
  <ul class="placeul">
    <li><a href="${pageContext.request.contextPath}/admin/page/main/index.jsp">首页</a></li>
    <li>简历详情</li>
  </ul>
</div>
<div class="formbody">
  <div class="usual">
    <div class="tabson">
      <ul class="forminfo">
      	<li>
          <label>真实姓名：</label><label style="width: 200px;"><b style="color: #000">${User.userName}</b></label>
        </li>
        <li>
          <label>照片：</label><img src=".${pageContext.request.contextPath}/admin/images/img13.png" width="100px" height="100px">
        </li>
        <li>
          <label>性别：</label><label style="width: 200px;"><b style="color: #000">${User.userSex}</b></label>
        </li>
        <li>
          <label>出生日期：</label><label style="width: 200px;"><b style="color: #000">${User.userBirthday}</b></label>
        </li>
        <li>
          <label>手机号：</label><label style="width: 200px;"><b style="color: #000">${User.userPhone}</b></label>
        </li>
        <li>
          <label>邮箱：</label><label style="width: 200px;"><b style="color: #000">${User.userEmail}</b></label>
        </li>
        <li>
          <label>求职意向：</label><label style="width: 200px;"><b style="color: #000">${User.userWork}</b></label>
        </li>
        <li>
          <label>工作经验：</label><label style="width: 200px;"><b style="color: #000">${User.userYear}</b></label>
        </li>
      </ul>
    </div>
  </div>
</div>
</body>
</html>
