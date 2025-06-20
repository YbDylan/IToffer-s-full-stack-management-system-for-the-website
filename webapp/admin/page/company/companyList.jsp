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
    <li><a href="#">企业列表</a></li>
  </ul>
</div>
<div class="rightinfo">
  <div class="tools">
    <ul class="toolbar">
      <li class="click"><span><img src="${pageContext.request.contextPath}/admin/images/t01.png" /></span><a href="${pageContext.request.contextPath}/admin/page/company/companyAdd.jsp">添加</a></li>
      <li><span><img src="${pageContext.request.contextPath}/admin/images/t03.png" /></span><a href="#">删除</a></li>
    </ul>
  </div>
  <table class="imgtable">
    <thead>
      <tr>
        <th ><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>企业名称</th>
        <th>企业所在地</th>
        <th>企业规模</th>
        <th>企业性质</th>
        <th>招聘状态</th>
        <th>显示排序</th>
        <th>图片</th>
        <th>操作</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${companyList}" var="company">
      <tr height="50px">
        <td ><input name="" type="checkbox" value="" /></td>
        <td>${company.companyName}</td>
        <td>${company.companyLoc}</td>
        <td>${company.companySize}</td>
        <td>${company.companyType}</td>
        <td>${company.companyStatus}</td>
        <td>${company.companyNum}</td>
        <td><img src="${pageContext.request.contextPath}/upload/${company.companyImg}" width="50px" height="50px"></td>
        <td ><a href="${pageContext.request.contextPath}/findCompanyById?companyId=${company.companyId}" class="tablelink">修改</a> &nbsp;&nbsp;<a href="#" class="tablelink"> 删除</a>&nbsp;&nbsp;
          <a href="${pageContext.request.contextPath}/toAddJob?companyId=${company.companyId}" class="tablelink"> 发布职位</a>
        </td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
  <div class="pagin">
    <div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
    <ul class="paginList">
      <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
      <li class="paginItem"><a href="javascript:;">1</a></li>
      <li class="paginItem current"><a href="javascript:;">2</a></li>
      <li class="paginItem"><a href="javascript:;">3</a></li>
      <li class="paginItem"><a href="javascript:;">4</a></li>
      <li class="paginItem"><a href="javascript:;">5</a></li>
      <li class="paginItem more"><a href="javascript:;">...</a></li>
      <li class="paginItem"><a href="javascript:;">10</a></li>
      <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
    </ul>
  </div>
</div>
</body>
</html>
