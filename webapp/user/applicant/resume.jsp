﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta charset="utf-8">
	<title>我的简历 - 锐聘网</title>
	<link href="${pageContext.request.contextPath}/user/css/base.css" type="text/css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/user/css/my_resume.css" type="text/css" rel="stylesheet" />
	<meta content="大学生求职,大学生就业,大学生招聘,IT人才,IT人才招聘,大学生名企招聘,,大学生找工作,IT名企招聘，IT行业招聘，IT企业快速入职" name="keywords">
	<meta content="锐聘专注于为企业提供高效的人力资源解决方案，同时面向IT类技术人才推出快速一站式免费就业服务。秉承QST青软实训人才服务理念，为数千家企业量身定做个性化、全程化的人才培养体系，同时帮助中高级人才铺设成功之路，为人才和企业架设起沟通之桥。" name="description">

</head>

<body>
<iframe src="${pageContext.request.contextPath}/user/top.jsp" width="100%" height="100"  scrolling="no" frameborder="0" ></iframe>

<div class="resume_con">
	<!--tab设置-->
	<div class="user_operate">
		<ul style="float:left">
			<li><a href="#" class="active">我的简历</a></li>
			<li><a href="${pageContext.request.contextPath}/findApplay?applayuserid=${user.userId}">我的申请</a></li>
			<div class="clear"></div>
		</ul>
		<div class="clear"></div>
	</div>
	<!--主体部分-->
	<div class="resume_main">
		<!--左边-->
		<div class="resume_left">
			<div class="resume_title">
				<div style="float:left">基本信息</div>
				<div class="btn"><a href="${pageContext.request.contextPath}/user/applicant/resumeBasicinfoUpdate.html">修改</a></div>
			</div>
			<div class="all_resume">
				<div class="table_style">
					<table width="300" border="0" cellpadding="3" cellspacing="1" bgcolor="#EEEEEE">
						<tr>
							<th width="110" align="right" bgcolor="#F8F8F8">姓名：</th>
							<td bgcolor="#F8F8F8">${user.userName}</td>
						</tr>
					</table>
					<div class="he"></div>
					<table width="300" border="0" cellpadding="3" cellspacing="1" bgcolor="#EEEEEE">
						<tr>
							<th width="110" align="right" bgcolor="#F8F8F8">性别：</th>
							<td bgcolor="#F8F8F8">${user.userSex}</td>
						</tr>
					</table>
					<div class="he"></div>
					<table width="300" border="0" cellpadding="3" cellspacing="1" bgcolor="#EEEEEE">
						<tr>
							<th width="110" align="right" bgcolor="#F8F8F8">出生日期：</th>
							<td bgcolor="#F8F8F8">${user.userBirthday}</td>
						</tr>
					</table>
					<div class="he"></div>
					<table width="300" border="0" cellpadding="3" cellspacing="1" bgcolor="#EEEEEE">
						<tr>
							<th width="110" align="right" bgcolor="#F8F8F8">手机：</th>
							<td bgcolor="#F8F8F8">${user.userPhone}</td>
						</tr>
					</table>
					<div class="he"></div>
					<table width="300" border="0" cellpadding="3" cellspacing="1" bgcolor="#EEEEEE">
						<tr>
							<th width="110" align="right" bgcolor="#F8F8F8">邮件：</th>
							<td bgcolor="#F8F8F8">${user.userEmail}</td>
						</tr>
					</table>
					<div class="he"></div>
					<table width="300" border="0" cellpadding="3" cellspacing="1" bgcolor="#EEEEEE">
						<tr>
							<th width="110" align="right" bgcolor="#F8F8F8">求职意向：</th>
							<td bgcolor="#F8F8F8">${user.userWork}</td>
						</tr>
					</table>
					<div class="he"></div>
					<table width="300" border="0" cellpadding="3" cellspacing="1" bgcolor="#EEEEEE">
						<tr>
							<th width="110" align="right" bgcolor="#F8F8F8">工作经验：</th>
							<td bgcolor="#F8F8F8">${user.userYear}</td>
						</tr>
					</table>
					<div class="he"></div>
				</div>
				<div style="float:right" class="uploade"><img src="${pageContext.request.contextPath}/upload/${user.userImg}" width="120px" height="120px">
					<%--<div align="center">
						<a href="resumeBasicInfoPicUpload.html" class="uploade_btn">更换照片</a>
					</div>--%>
				</div>
				<div class="clear"></div>
			</div>
			<div class="resume_title">
				<div style="float:left">教育经历</div>
				<a href="${pageContext.request.contextPath}/user/applicant/resumeDegreeInfoAdd.jsp"><div class="btn">添加</div></a>
			</div>
			<div class="it-table-grid">
				<ul>
					<li class="tn-border-gray tn-border-bottom it-table-grid-header">
						<p class="tn-name">
							毕业院校</p>
						<p class="tn-date">
							就读时间</p>
						<p class="tn-degree">
							学历</p>
						<p class="tn-fieldofstudy">
							专业</p>
					</li>
					<li class="tn-border-gray tn-border-bottom">
						<p class="tn-name" title="青软实训">
							青软实训
						</p>
						<p class="tn-date">2013/10-2014/10</p>
						<p class="tn-degree" title="">
							本科&nbsp;
						</p>
						<p class="tn-fieldofstudy" title="软件工程">
							软件工程&nbsp;
						</p>
						<span class="tn-actions"><a href="#" class="tn-action tn-action-text-icon">
			            <span class="tn-icon it-icon-modify"></span><span class="tn-action-text">修改</span>
			            </a>
			            <a href="" class="tn-action tn-action-text-icon tn-delete">
			            <span class="tn-icon it-icon-delete"></span><span class="tn-action-text">删除</span>
			            </a></span></li>
				</ul>
			</div>

			<div class="resume_title">
				<div style="float:left">工作经历</div>
				<div class="btn">添加</div>
			</div>
			<div class="it-table-grid">
				<ul>
					<li class="tn-border-gray tn-border-bottom it-table-grid-header">
						<p class="tn-name">
							工作公司	</p>
						<p class="tn-date">
							在职时间</p>
						<p class="tn-degree">
							部门</p>
						<p class="tn-fieldofstudy">
							职位名称</p>
					</li>
					<li class="tn-border-gray tn-border-bottom">
						<p class="tn-name" title="青软实训">
							青软实训
						</p>
						<p class="tn-date">2013/10-2014/10</p>
						<p class="tn-degree" title="">
							研发部
						</p>
						<p class="tn-fieldofstudy" title="软件工程">
							软件开发工程师
						</p>
						<span class="tn-actions"><a href="#" class="tn-action tn-action-text-icon">
			            <span class="tn-icon it-icon-modify"></span><span class="tn-action-text">修改</span>
			            </a>
			            <a href="" class="tn-action tn-action-text-icon tn-delete">
			            <span class="tn-icon it-icon-delete"></span><span class="tn-action-text">删除</span>
			            </a></span></li>

				</ul>
			</div>

			<div class="resume_title">
				<div style="float:left">项目经验</div>
				<div class="btn">添加</div>
			</div>
			<div class="it-table-grid">
				<ul>
					<li class="tn-border-gray tn-border-bottom it-table-grid-header">
						<p class="tn-name">
							项目名称	</p>
						<p class="tn-date">
							参与时间</p>
						<p class="tn-degree">
							担任职位</p>
					</li>


				</ul>
			</div>
			<div class="resume_title">
				<div style="float:left">培训经历</div>
				<div class="btn">添加</div>
			</div>
			<div class="it-table-grid">
				<ul>
					<li class="tn-border-gray tn-border-bottom it-table-grid-header">
						<p class="tn-name">
							培训名称	</p>
						<p class="tn-date">
							培训时间</p>

					</li>


				</ul>
			</div>
			<div class="resume_title">
				<div style="float:left">获得证书</div>
				<div class="btn">添加</div>
			</div>
			<div class="it-table-grid">
				<ul>
					<li class="tn-border-gray tn-border-bottom it-table-grid-header">
						<p class="tn-name">
							证书名称	</p>

					</li>


				</ul>
			</div>
			<div class="resume_title">
				<div style="float:left">语言能力</div>
				<div class="btn">添加</div>
			</div>

			<div class="it-table-grid">
				<ul>
					<li class="tn-border-gray tn-border-bottom it-table-grid-header">
						<p class="tn-name">
							语言	</p>
						<p class="tn-date">
							听说</p>
						<p class="tn-degree">
							读写</p>
						<p class="tn-fieldofstudy">
							等级考试</p>
					</li>
					<li class="tn-border-gray tn-border-bottom">
						<p class="tn-name" title="英语">
							英语
						</p>
						<p class="tn-date">熟练</p>
						<p class="tn-degree" title="">
							熟练
						</p>
						<p class="tn-fieldofstudy" title="CET-6">
							CET-6
						</p>
						<span class="tn-actions"><a href="#" class="tn-action tn-action-text-icon">
			            <span class="tn-icon it-icon-modify"></span><span class="tn-action-text">修改</span>
			            </a>
			            <a href="" class="tn-action tn-action-text-icon tn-delete">
			            <span class="tn-icon it-icon-delete"></span><span class="tn-action-text">删除</span>
			            </a></span></li>

				</ul>
			</div>
			<div class="resume_title">
				<div style="float:left">IT技能</div>
				<div class="btn">添加</div>
			</div>
			<div class="it-table-grid">
				<ul>
					<li class="tn-border-gray tn-border-bottom it-table-grid-header">
						<p class="tn-auto">
							技能名称</p>

						<p class="tn-name">
							熟练程度</p>
					</li>
					<li class="tn-border-gray tn-border-bottom">
						<p class="tn-auto">
							Oracle</p>
						<p class="tn-name">
							熟练</p>
						<span class="tn-actions"><a href="#" class="tn-action tn-action-text-icon">
			            <span class="tn-icon it-icon-modify"></span><span class="tn-action-text">修改</span>
			            </a>
			            <a href="" class="tn-action tn-action-text-icon tn-delete">
			            <span class="tn-icon it-icon-delete"></span><span class="tn-action-text">删除</span>
			            </a></span></li>
					<li class="tn-border-gray tn-border-bottom">
						<p class="tn-auto">
							JavaEE</p>
						<p class="tn-name">
							熟练</p>
						<span class="tn-actions"><a href="#" class="tn-action tn-action-text-icon">
			            <span class="tn-icon it-icon-modify"></span><span class="tn-action-text">修改</span>
			            </a>
			            <a href="" class="tn-action tn-action-text-icon tn-delete">
			            <span class="tn-icon it-icon-delete"></span><span class="tn-action-text">删除</span>
			            </a></span></li>
					<li class="tn-border-gray tn-border-bottom">
						<p class="tn-auto">
							Java</p>
						<p class="tn-name">
							熟练</p>
						<span class="tn-actions"><a href="#" class="tn-action tn-action-text-icon">
			            <span class="tn-icon it-icon-modify"></span><span class="tn-action-text">修改</span>
			            </a>
			            <a href="" class="tn-action tn-action-text-icon tn-delete">
			            <span class="tn-icon it-icon-delete"></span><span class="tn-action-text">删除</span>
			            </a></span></li>

				</ul>
			</div>
			<div class="resume_title">
				<div style="float:left">其他信息</div>
				<div class="btn">添加</div>
			</div>
			<div class="it-table-grid">
				<ul>
					<li class="tn-border-gray tn-border-bottom it-table-grid-header">
						<p class="tn-name">
							标题</p>
						<p class="tn-auto">
							描述</p>
					</li>



				</ul>
			</div>
			<div class="resume_title">
				<div style="float:left">简历附件</div>
				<div class="btn">添加</div>
			</div>
			<div class="it-table-grid">
				<div class="it-table-grid">
					暂无附件！</div>
			</div>


		</div>
		<!--右边-->
		<iframe src="${pageContext.request.contextPath}/user/applicant/resume_right.html" width="290" height="650"  scrolling="no" frameborder="0"></iframe>

		<div style="clear:both"></div>
	</div>
</div>

<iframe src="${pageContext.request.contextPath}/user/foot.jsp" width="100%" height="150"  scrolling="no" frameborder="0" ></iframe>
</body>
</html>
