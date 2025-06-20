<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>添加企业</title>
    <link href="${pageContext.request.contextPath}/admin/css/manageadmin.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/admin/ckeditor/ckeditor.js"></script>
    <script type="text/javascript">
        function validate(){
            if(document.getElementById("companyName").value == ""){
                alert("企业名称不能为空！");
                document.getElementById("companyName").focus();
                return false;
            }
            if(document.getElementById("companyArea").value == ""){
                alert("企业所在地不能为空！");
                document.getElementById("companyArea").focus();
                return false;
            }
            if(document.getElementById("companySize").value == ""){
                alert("企业规模不能为空！");
                document.getElementById("companySize").focus();
                return false;
            }
            if(document.getElementById("companyType").value == ""){
                alert("企业性质不能为空！");
                document.getElementById("companyType").focus();
                return false;
            }
            if(document.getElementById("companyPic").value == ""){
                alert("请选择企业宣传图片！");
                document.getElementById("companyPic").focus();
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<div class="place"> <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">首页</a></li>
        <li><a href="#">添加企业</a></li>
    </ul>
</div>
<div class="formbody">
    <div class="usual">
        <form name="frm" action="${pageContext.request.contextPath}/updateCompany?companyId=${company.companyId}" method="post" enctype="multipart/form-data" onsubmit="return validate();">
            <div class="tabson">
                <ul class="forminfo">
                    <li>
                        <label>企业名称<b>*</b></label>
                        <input name="companyName" type="text" id="companyName" class="dfinput" style="width:518px;" value = "${company.companyName}"/>
                    </li>
                    <li>
                        <label>企业所在地<b>*</b></label>
                        <input name="companyLoc" type="text" id="companyArea" class="dfinput" style="width:518px;" value = "${company.companyLoc}"/>
                    </li>
                    <li>
                        <label>企业规模<b>*</b></label>
                        <input name="companySize" type="text" id="companySize" class="dfinput" style="width:518px;" value = "${company.companySize}"/>
                    </li>
                    <li>
                        <label>企业性质<b>*</b></label>
                        <input name="companyType" type="text" id="companyType" class="dfinput" style="width:518px;" value = "${company.companyType}"/>
                    </li>
                    <li>
                        <p>企业简介&nbsp;(不超过1000字)</p>
                        <textarea class="ckeditor" cols="50" id="companyBrief" name="companyDesc" rows="10" value = "${company.companyDesc}"></textarea>
                    </li>
                    <li>
                        <label>企业招聘状态</label>
                        <div class="vocation">
                            <select name="companyStatus" class="select3" value = "${company.companyStatus}">
                                <option value="0">招聘中</option>
                                <option value="1">已暂停</option>
                                <option value="2">已结束</option>
                                </c:if>
                            </select>
                        </div>
                    </li>
                    <li>
                        <label>显示排序<b></b></label>
                        <input name="companyNum" type="text" class="dfinput" style="width:100px;" value = "${company.companyNum}"/>
                    </li>
                    <li>
                        <label>宣传图片<b>*</b></label>
                        <input name="uploadImg" id="companyPic" type="file" class="dfinput" style="width:300px; margin-right:5px;"/>
                    </li>
                    <li>  <label>&nbsp;</label>
                        <input name="" type="submit" class="btn" value="添加"/>
                    </li>
                </ul>
            </div>
        </form>
        <font color="red">${saveError}</font>
    </div>
</div>
</body>