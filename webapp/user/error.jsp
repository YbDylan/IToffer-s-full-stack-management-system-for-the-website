<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>锐聘网</title>
<link href="css/base.css" type="text/css" rel="stylesheet" />
<link href="css/error.css" type="text/css" rel="stylesheet" />
</head>
<body>
<iframe src="top.jsp" width="100%" height="100"  scrolling="no" frameborder="0" ></iframe>
<div class="success_content">
  <div class="success_left">
    <div class="error"><img alt="" src="images/error.gif"></div>
    <h2 align="center">出错了！</h2>
  </div>
  <div class="success_right">
    <p class="green16">错误提示信息</p>
    <p><a href="javascript:window.history.go(-1);"><span class="tn-button">返回上一步</span></a>
    <a href="index.jsp"><span class="tn-button">返回首页</span></a></p>
  </div>
  <div class="clear"></div>
</div>
<iframe src="${pageContext.request.contextPath}/user/foot.jsp" width="100%" height="150"  scrolling="no" frameborder="0" ></iframe>
</body>
</html>