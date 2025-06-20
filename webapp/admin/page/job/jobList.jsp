<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <title>职位列表</title>
  <link href="${pageContext.request.contextPath}/admin/css/manageadmin.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="place"> <span>位置：</span>
  <ul class="placeul">
    <li><a href="${pageContext.request.contextPath}/admin/page/main/index.jsp">首页</a></li>
    <li>职位列表</li>
  </ul>
</div>
<div class="rightinfo">
  <div class="tools">
    <%-- <ul class="toolbar">
       <li class="click"><span><img src="${pageContext.request.contextPath}/admin/images/t01.png" /></span>
       <a href="jobAdd.html">添加</a></li>
     </ul>--%>
    <iframe src="${pageContext.request.contextPath}/admin/page/job/jobSearch.jsp" scrolling="no" frameborder="0" width="630" height="42"></iframe>
  </div>
  <table class="imgtable">
    <thead>
    <tr>
      <th>职位名称</th>
      <th>所属企业</th>
      <th>招聘数</th>
      <th>工作地点</th>
      <th>招聘状态</th>
      <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${jobList}" var="job">
      <tr height="50px">
        <td>${job.jobName}</td>
        <td>${job.comName}</td>
        <td>${job.jobCount}</td>
        <td>${job.jobLoc}</td>
        <c:if test="${job.jobStatus==0}">
          <td>招聘中</td>
        </c:if>
        <c:if test="${job.jobStatus==1}">
          <td>结束</td>
        </c:if>
        <td ><a href="#" class="tablelink">修改</a> &nbsp;&nbsp;
          <a href="#" class="tablelink"> 删除</a></td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
  <div class="pagin">
    <div class="message">共<i class="blue"1256</i>页，当前显示第&nbsp;<i class="blue">1&nbsp;</i>页</div>
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