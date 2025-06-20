<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>“锐聘之星”软件设计大赛 - 锐聘网</title>
<link href="${pageContext.request.contextPath}/user/css//base.css" type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/user/css//company.css" type="text/css" rel="stylesheet" />
</head>

<body>
<iframe src="${pageContext.request.contextPath}/user/top.jsp" width="100%" height="120"  scrolling="no" frameborder="0" ></iframe>
<div class="tn-grid">
  <div class="it-com-keyimg">
    <div class="tn-widget-content"> <img src="${pageContext.request.contextPath}/user/images//635581231315281772.jpg" /> </div>
  </div>
</div>
<div class="clear"></div>
<div class="tn-grid">
  <div class="tn-widget-content">
    <div class="tn-box-content">
      <div class="tn-helper-clearfix">
        <div class="it-main2">
          <div class="it-ctn-heading">
            <div class="it-title-line"> <span> <em> 157 </em> 浏览 </span>
              <h3>${company.companyName}  </h3>
            </div>
          </div>
          <div class="it-com-textnote"> <span class="kuai"> 行业：计算机软件 </span> <span class="kuai"> 所在地：${company.companyLoc} </span> <span class="kuai"> 规模：${company.companySize} </span> <span class="kuai"> 性质：${company.companyType} </span> </div>
          <div class="it-company-text">
            <p class="p1"> <strong>企业简介 </strong> </p>
            <br />
            <center><font color="red">${applayError}</font></center><br/>
            <p class="p1" style="padding-left: 30px;"> <strong> </strong> <span style="line-height: 1.5; font-size: 14px;">
            ${company.companyDesc}
            </span> </p>
            <br />
          </div>
          <p class="tn-helper-right"> <a href="" target="_blank" class="tn-action"> <span class="tn-icon"> </span> <span class="tn-action-text"> 成功案例 </span> </a> </p>
        </div>
      </div>
    </div>
  </div>

  <input type="hidden" id="videoListCompanyId" value="151" />
  <input type="hidden" id="companyTotalVideoCount" value='1' />
  <div class="it-content-seqbox">
    <div id="morejob"   >
      <div class="it-ctn-heading">
        <div class="it-title-line">
          <h3> 职位 </h3>
        </div>
      </div><!--职位列表-->
      <c:forEach items="${jobList}" var="job">
        <div class="it-post-box tn-border-dashed">
          <div class="it-post-name">
            <div class="tn-helper-right it-post-btn"> <a class="it-font-underline" href="${pageContext.request.contextPath}/findJobByJobId?jobId=${job.jobId}" target=_blank>
              <span class="tn-icon-view"></span>
              <span class=tn-action-text>查看详细</span> </a>
              <a class="tn-button-small" href="${pageContext.request.contextPath}/applaycass?applayjobid=${job.jobId}&applayjobname=${job.jobName}&applayuserid=${user.userId}"><span class="tn-button-text">申请</span> </a>
            </div>
            <h3><a title=${job.jobName} href="${pageContext.request.contextPath}/findJobByJobId?jobId=${job.jobId}" target=_blank>${job.jobName}</a></h3>
          </div>
          <ul class="it-post">
            <li style="width:300px;">薪资范围： <span class="it-font-size">${job.jobSal}/月</span></li>
            <li style="width:250px;"><span class=tn-text-note>工作地区：</span>
              <LaBEL>${job.jobLoc}</LaBEL>
            </li>
            <li><span class="tn-text-note">招聘人数：</span> ${job.jobCount} </li>
            <li><span class="tn-text-note">学历要求：</span> ${job.jobDegree} </li>
          </ul>
        </div>
      </c:forEach>
      <!--职位列表-->
    </div>
  </div>
  <div class="bottomban">
    <div class="bottombanbox"> <img src="${pageContext.request.contextPath}/user/images//635560750235172731.jpg" /> </div>
  </div>
</div>
</div>
</div>
<!-- InstanceBeginEditable name="backtop" -->
<p class="it-back-to-top" style=" position:fixed" id="backTop" title="返回顶部"> <a href="#top"> <span> </span> 返回顶部 </a> </p>
<!-- InstanceEndEditable -->
<iframe src="${pageContext.request.contextPath}/user/foot.jsp" width="100%" height="150"  scrolling="no" frameborder="0" ></iframe>
</div>
</body>
</html>