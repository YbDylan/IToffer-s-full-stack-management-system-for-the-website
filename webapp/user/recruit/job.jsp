<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>“锐聘之星”软件设计大赛 - 锐聘网</title>
<link href="${pageContext.request.contextPath}/user/css/base.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/user/css/job.css" type="text/css" rel="stylesheet">
</head>
<body>
<iframe src="${pageContext.request.contextPath}/user/top.jsp" width="100%" height="120" scrolling="no" frameborder="0"> </iframe>
<div class="tn-grid">
  <div class="it-com-keyimg">
    <div class="tn-widget-content"> <img src="${pageContext.request.contextPath}/user/images/635581231315281772.jpg"> </div>
  </div>
</div>
<div class="tn-grid">
  <div class="tn-box-content">
    <div class="it-main">
      <div class="it-ctn-heading">
        <div class="it-title-line"> <span class="it-hover-text"><a href="#" target="_blank">其它同类职位</a><span style="float:left;margin-right:20px">
          <div onmouseover="setShare(&quot;${job.jobName}&quot;,&quot;http://www.itoffer.cn/Job/001004005-57&quot;)"> <a target="_blank">分享</a> </div>
          </span></span>
          <h3>${job.jobName}</h3>
        </div>
      </div>
      <div class="job">
        <table class="it-table">
          <tbody>
            <tr>
              <td class="it-table-title"> 招聘人数： </td>
              <td class="tn-border-rb"> ${job.jobCount}人 </td>
              <td class="it-table-title"> 薪资： </td>
              <td class="tn-border-rb"> ${job.jobSal}/年 </td>
            </tr>
            <tr>

              <td class="it-table-title"> 工作地区： </td>
              <td class="tn-border-rb"> ${job.jobLoc} </td>

              <td class="it-table-title"> 外语要求： </td>
              <td class="tn-border-rb">  </td>
            </tr>
            <tr>
              <td class="it-table-title"> 学历要求： </td>
              <td class="tn-border-rb"> ${job.jobDegree} </td>
              <td class="it-table-title"> 专业要求： </td>
              <td class="tn-border-rb"> ${job.jobSubject} </td>
            </tr>

          </tbody>
        </table>
       <%-- <div class="it-post-count">
          <div class="it-com-apply"> <a href="javascript:void(0)" title="您已经申请过！" class="tn-button it-smallbutton-apply-hover"></a> </div>
          <ul class="tn-text-note it-text-part">
            <li class="jobli"><span class="tn-explain-icon"><span class="tn-icon it-icon-time"></span><span class="tn-icon-text" id="leftTimeShowSpan">
              <label>已过期</label>
              </span></span></li>
            <li class="jobli"><span class="tn-explain-icon"><span class="tn-icon it-icon-people"></span><span class="tn-icon-text">招聘人数 <span class="it-font-cor">40</span> 人</span></span></li>
            <li class="jobli"><span class="tn-explain-icon"><span class="tn-icon it-icon-people"></span><span class="tn-icon-text">申请人数 <span class="it-font-cor">44</span> 人</span></span></li>
          </ul>
        </div>--%>
        <div class="clear"> </div>
        <div class="it-post-text">
          <p> <strong>招聘岗位：</strong>${job.jobName} </p>
          <p class="default"> <strong>学历要求：</strong>${job.jobDegree} </p>
          <p class="default"> <strong>需求人数：</strong>${job.jobCount}人 </p>
          <p class="default"> <strong>工作地点：</strong>${job.jobLoc} </p>
          <p class="default"> <strong>招聘要求：</strong>${job.jobDetail}<strong></strong> </p>
          <p class="default"> <strong>工资待遇：</strong>${job.jobSal}<strong></strong> </p>
        </div>
        <div class="it-requirements-title">
          <h3 class="it-font-size">职位要求</h3>
        </div>
        <div class="it-post-text">
          <p><strong>岗位描述：</strong> ${job.jobDesc}</p>
          <p><strong>任职资格：</strong></p>
          <p><strong>
            ${job.jobDetail}
          </strong>
          <p>&nbsp;</p>
        </div>
        <div class="btn_bot"> <a class="tn-button-secondary" href="#" target="_blank"> <span style="color:#1faebc"  class="tn-button-text">查看公司信息</span> </a> <a title="您已经申请过！" class="tn-button-secondary" href="javascript:void(0)"> <span class="tn-button-text">此职位已经申请</span> </a> </div>
      </div>
    </div>
    <div class="job_right">
      <div class="it-listbox">
        <div class="it-listbox-header">
          <div class="tn-option"><a href="#" target="_blank">更多</a></div>
          <h3 class="tn-helper-reset">职位分类</h3>
        </div>
        <div class="it-listbox-content">
          <ul>
            <li><span class="tn-icon"></span><a title="软件开发工程师" href="#" target="_blank">软件开发工程师</a></li>
            <li><span class="tn-icon"></span><a title=".Net软件开发" href="#" target="_blank">.Net软件开发</a></li>
            <li><span class="tn-icon"></span><a title="移动客户端开发" href="#" target="_blank">移动客户端开发</a></li>
            <li><span class="tn-icon"></span><a title="Java软件开发" href="#" target="_blank">Java软件开发</a></li>
            <li><span class="tn-icon"></span><a title="其他" href="#" target="_blank">其他</a></li>
            <li><span class="tn-icon"></span><a title="IT运维工程师" href="#" target="_blank">IT运维工程师</a></li>
          </ul>
        </div>
      </div>
      <div class="it-listbox">
        <div class="it-listbox-header">
          <div class="tn-option"><a href="http://www.itoffer.cn" target="_blank">更多</a></div>
          <h3 class="tn-helper-reset">热招企业</h3>
        </div>
        <div class="it-listbox-content">
          <ul>
            <li><span class="tn-icon"></span><a title="“锐聘之星”软件设计大赛" href=#" target="_blank">“锐聘之星”软件设计大赛</a></li>
            <li><span class="tn-icon"></span><a title="凌志软件股份有限公司" href="#" target="_blank">凌志软件股份有限公司</a></li>
            <li><span class="tn-icon"></span><a title="北京日立华胜信息系统有限公司" href="#" target="_blank">北京日立华胜信息系统有限公司</a></li>
            <li><span class="tn-icon"></span><a title="宏智科技（苏州）有限公司" href="#" target="_blank">宏智科技（苏州）有限公司</a></li>
            <li><span class="tn-icon"></span><a title="江苏仕德伟网络科技股份有限公司" href="#" target="_blank">江苏仕德伟网络科技股份有限公司</a></li>
            <li><span class="tn-icon"></span><a title="青岛百灵信息科技有限公司" href="#" target="_blank">青岛百灵信息科技有限公司</a></li>
            <li><span class="tn-icon"></span><a title="无锡晟奥软件有限公司" href="#" target="_blank">无锡晟奥软件有限公司</a></li>
            <li><span class="tn-icon"></span><a title="苏州大宇宙信息创造有限公司" href="#" target="_blank">苏州大宇宙信息创造有限公司</a></li>
            <li><span class="tn-icon"></span><a title="青岛拓宇网络科技有限公司" href="#" target="_blank">青岛拓宇网络科技有限公司</a></li>
            <li><span class="tn-icon"></span><a title="无锡NTT DATA有限公司" href="#" target="_blank">无锡NTT DATA有限公司</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="clear"> </div>
  </div>
</div>
<iframe src="${pageContext.request.contextPath}/user/foot.jsp" width="100%" height="150" scrolling="no" frameborder="0"> </iframe>
</body>
</html>