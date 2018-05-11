<%@ page contentType="text/html; charset=gbk"%>
<%@ taglib uri="/WEB-INF/rocket.tld" prefix="rocket" %>

<style>
/* CSS Document */
.link-active
{
	font-family:宋体, sans-serif;
	FONT-SIZE: 9pt;
	COLOR: #FFFF00;
	cursor: hand;
	border-bottom-style: solid;
	border-bottom-width: 1px;
}

.activerow{
	font-family:宋体;
	font-size:9pt;
	color: #FFFF00;
	cursor:hand;
	background-color: #C0C0FF;
}
.activemenu{
	color: #FFFF00;
}
.selectedrow{
	font-family:宋体;
	font-size:9pt;
	color: #FFFF00;
	cursor:hand;
	background-color: #99FF99;
}



Body{
	min-width:700px;
	height:100%;
	margin:0px auto;
	padding:0px;
	background-image:url(script/login_new/blue/BodyBG.gif);
	font-size:12px;
	scrollbar-face-color: #D1DCE8;
	scrollbar-shadow-color: #A4B2C6;
	scrollbar-highlight-color: #FFFFFF;
	scrollbar-3dlight-color: #A4B2C6;
	scrollbar-darkshadow-color: #EDF9F7;
	scrollbar-track-color: #DFEBE9;
	scrollbar-arrow-color: #91A4A2;
}
/*-------------------Login-------------------*/
.LoginSPARK_container{ 
	width:975px; 
	height:410px; 
	position:absolute; 
	top:50%; 
	left:50%; 
	margin:-225px 0px 0px -467px; 
	line-height:379px; 
	text-align:center; 
}

.LoginSPARK_BodyLogo_new{
	width:975px;
	height:420px;
	clear:both;
	background:none;
}

html>body .LoginSPARK_BodyLogo_new{
	background-image:url(script/login_new/blue/loginSPARK_03.png);
}

* .LoginSPARK_BodyLogo_new{
	width:975px;
	height:120px;
	filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='script/login_new/blue/loginSPARK_03.png');
}

.LoginSPARK_BodyInput_left{
	width:60px;
	height:127px;
	background:none;
	float:left;
}

html>body .LoginSPARK_BodyInput_left{	
	background-image:url(script/login_new/blue/loginSPARK_05.png);
	}
* .LoginSPARK_BodyInput_left{
	filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='script/login_new/blue/loginSPARK_05.png');
	}
.LoginSPARK_BodyInput_Pic{
	width:458px;
	height:127px;
	background-repeat:no-repeat;
	background-image:url(script/login_new/blue/loginSPARK_06.png);
	float:left;
	}
.LoginSPARK_BodyInput_Input{
	width:332px;
	height:127px;
	background-repeat:no-repeat;
	background-image:url(script/login_new/blue/loginSPARK_07.png);
	float:left;
	}
.LoginSPARK_BodyInput_Text{
	width:140px;
	height:100px;
	line-height:30px;
	padding-top:20px;
	font-weight:bold;
	text-align:right;
	color:#FFFFFF;
	float:left;
}
.LoginSPARK_BodyInput_InputText{
	width:182px;
	height:103px;
	padding-top:17px;
	padding-left:5px;
	float:left;
}
.LoginSPARK_BodyInput_InputText input{
	height:20px;
	margin:5px;
	border:1px solid #3699CC;
	color:#00418E;
	float:left;
}
.LoginSPARK_BodyInput_button{
	width:66px;
	height:127px;
	float:left;
	}
.LoginSPARK_BodyInput_right{
	width:59px;
	height:127px;
	background:none;
	float:left;
	}
html>body .LoginSPARK_BodyInput_right{	
	background-image:url(script/login_new/blue/loginSPARK_09.png);
	}
* .LoginSPARK_BodyInput_right{
	filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='script/login_new/blue/loginSPARK_09.png');
	}
.LoginSPARK_BodyBotton{
	width:975px;
	height:420px;
	clear:both;
	background:none;
}

html>body .LoginSPARK_BodyBotton{
	background-image:url(script/login_new/blue/loginSPARK_10.png);
}

* .LoginSPARK_BodyBotton{
	width:975px;
	height:120px;
	filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='script/login_new/blue/loginSPARK_10.png');
}

.LoginSPARK_Copyright{
	width:975px;
	height:31px;
	line-height:31px;
	text-align:center;
	margin:0 auto;
	color:#00418E;
}	
	
</style>

<%
if(session != null){
	session.invalidate();
}

javax.servlet.http.Cookie[] cookies = request.getCookies();
if( cookies != null ){
	for( int ii=0; ii<cookies.length; ii++ ){
		cookies[ii].setValue( null );
	}
}
//客户化路径
String CustPath=cn.mars.common.web.profile.SystemProfile.getInstance().getCustPath();
if( CustPath == null || CustPath.length() == 0 ) {
	CustPath = "module/img/login-images";
}

//应用名称
String AppTitle=cn.mars.common.web.profile.SystemProfile.getInstance().getAppTitle();
if( AppTitle == null || AppTitle.length() == 0 ) {
	AppTitle = "演示平台";
}
//部门
String Branch=cn.mars.common.web.profile.SystemProfile.getInstance().getBranch();
if( Branch == null || Branch.length() == 0 ) {
	Branch = "";
}
//版本期
String YearCopy=cn.mars.common.web.profile.SystemProfile.getInstance().getYearCopy();
if( YearCopy == null || YearCopy.length() == 0 ) {
	YearCopy = "2010";
}
//中文版权
String ChCopy=cn.mars.common.web.profile.SystemProfile.getInstance().getChCopy();
if( ChCopy == null || ChCopy.length() == 0 ) {
	ChCopy = "";
} else {
	ChCopy = "&copy;&nbsp;"+YearCopy+"&nbsp;"+ChCopy+"&nbsp;版权所有";
}
//英文版权
String EnCopy=cn.mars.common.web.profile.SystemProfile.getInstance().getEnCopy();
if( EnCopy == null || EnCopy.length() == 0 ) {
	EnCopy = "";
} else {
	EnCopy = "&copy;&nbsp;"+YearCopy+"&nbsp;" + "All Rights Reserved by " + EnCopy;
}
//版本号
String AppVer=cn.mars.common.web.profile.SystemProfile.getInstance().getAppVer();
if( AppVer == null || AppVer.length() == 0 ) {
	AppVer = "V1.0.1";
}
%>

<rocket:html layout="" script="/script/index.js">
<head><title><%=AppTitle%>--用户登入</title></head>

<script language="javaScript">
if( errorDesc != '' ){
	alert( errorDesc );
}

try{
	if (top.location != self.location){
		var loginPage = top.loginPage;
		if( loginPage == null || loginPage == '' ){
			loginPage = self.location;
		}
		
		top.navigate( loginPage );
	}
}
catch( e ){
	top.navigate( self.location );
}

// 生成随机图片
var i = 0;
function prepareRamdonImage()
{
	var	dd = new Date();
	var page = rootPath + "/rocket.main?txn-code=random&code-name=add-code&code-type=1&inner-flag:rocket-stamp=" + dd.getTime() + "&image-type=jpg";
	var str = '<img name="randomImage" src="' + page + '" width="75" height="24" border="0">';
	if( i == 0 ) {
		document.write( str );
		i ++;
	} else {
		var o = document.getElementById('randomImage');
		o.src = page;
	}
}

function setFlag( name )
{
	var o = document.getElementById(name);
	o.checked = !o.checked;
}

/* ***************** gears stop ****************** */
function _saveUserName()
{
	var f=document.getElementById('_savePasswd').checked;
	if(f){
		_browse.set('_savePasswd', 'true');
		_browse.set('username', document.getElementById('username').value);
		_browse.set('password', document.getElementById('password').value);
	}
	else{
		_browse.remove('_savePasswd');
	}
}

// 登入用户名
var _userList = [];
function prepareUserName()
{
	var s=_browse.get('/index.jsp');
	if(s==null || s=='') return;
	var ls=s.split('&');
	for(var x=0; x<ls.length; x++){
		var n=ls[x].indexOf('=');
		if(n>0){
			_userList.push([ls[x].substring(0,n), ls[x].substring(n+1)]);
		}
	}
}

function selectUserName()
{
	var obj = document.getElementById('username');
	openBrowseWindow({srcElement:obj,
		showType:'mix', 
		index:0, 
		selectList:_userList,
		mixbox:'_name',
		codebox:'username'});
	
	obj = null;
}

// 请在这里添加，页面加载完成后的用户初始化操作
function __userInitPage()
{
	prepareUserName();
	
	var f=_browse.get('_savePasswd');
	if(f == 'true'){
		document.getElementById('_savePasswd').checked = true;
		document.getElementById('username').value=_browse.get('username');
		document.getElementById('password').value=_browse.get('password');
	}
	
	setTimeout(loadVersion, 1);

}

_browse.execute( __userInitPage );
</script>

<link rel="stylesheet" type="text/css" />

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<rocket:form action="/txn999999">

<input type='hidden' name='login-page' value='/index.jsp'>
<div class="LoginSPARK_container">
	<div class="LoginSPARK_BodyLogo_new">
	  <div class="LoginSPARK_BodyInput_Text">
		<!--
		-->
		<table>
			  <tr>
	  <td align="left">
		  <div style="width:240;">
		  </div>
	  </td>
	  <td align="left">
		  <div style="width:300; padding-left:220; padding-top:75; background-image: url('<%=request.getContextPath()+"/"+CustPath%>/cust-logo.gif'); background-repeat: no-repeat; background-position: left bottom; filter: Alpha(Opacity=70); "></div>

	  </td>
	  <td align="left">
		  <div style="width:400; padding-left:0; padding-top:40; color:#008000; font-family:黑体; font-size:20px; filter: Alpha(Opacity=70);" >
			  <b><%=AppTitle%></b>
		  </div>
	  </td>
  </tr>

		</table>
		</div>
	</div>

	<div class="LoginSPARK_BodyInput_left"></div>
	<div class="LoginSPARK_BodyInput_Pic"></div>
	<div class="LoginSPARK_BodyInput_Input">
	  <div class="LoginSPARK_BodyInput_Text">
		<table>
			<tr>
			<td>
				<div style="width:200; float:left; padding-left:0; padding-top:0" align="right">
				<table>
					<tr>
					<td>
						<div id='label:username' style="width:80; float:left; padding-left:0; padding-top:0" align="right"><b><font color='#FFFFFF'>用 户 名：</font></b></div>
					</td><td>
						<div style="width:100; float:left; padding-left:0; padding-top:0" align="left">
						   <input type='hidden' id='_name' name='_name'>
							<div class='browse-input' style='display:inline;width:95%' onclick='selectUserName("username")'><div class='box'><input type='text' haveButton='true' _width='100%' name='username' id='username'  maxlength="24" size="15" value='' checkFlag='true' notnull='true' minvalue='1' maxvalue='24' datatype='string' style="color:#00410E; ime-mode:inactive" class="text"></div></div>
					   </div>
					</td>
					</tr>
					<tr>
					<td>
						<div id='label:password' style="width:80; float:left; padding-top:0" align="right"><b><font color='#FFFFFF'>密　　码：</font></b></div>
					</td><td>
						<div style="width:95; float:left; padding-left:0" align="left">
							<div style="width:95; float:left; padding-left:0" align="left">
								<input type='password' name='password' id='password' size="15" value='' checkFlag='true' notnull='true' minvalue='1' datatype='password' style="color:#00410E; width:100%;ime-mode:disabled">
						   </div>
							
					   </div>
					</td>
					</tr>

					<tr>
					<td>
						<div id='label:add-code' style="width:80; float:left; padding-top:0"  align="right"><b><font color='#FFFFFF'>附 加 码：</font></b></div>
					</td><td>
						<div style="width:95; float:left; padding-left:0" align="left">
							<div style="width:95; float:left; padding-left:0" align="left">
								<input type='text' _width='100%' name='add-code' id='add-code' maxlength="4" value='' checkFlag='true' notnull='true' minvalue='4' maxvalue='4' datatype='string' style="color:#00410E;ime-mode:disabled;width:50px" class="text">
						   </div>
							
					   </div>
					</td>
					</tr>
						</table>
						</div>
					</td>
					<td>

						<div style="width:100; float:left; padding-left:0; padding-top:0" align="left">
							<table>
					<tr>
					<td>
						<div style="width:100; float:left; padding-left:0; padding-top:0" align="left">
							<input type="checkbox" name="inner-flag:preview-flag" value="true" unchecked>
							<span style='font-weight:bold; color:#FFFFFF; cursor:hand' onclick="setFlag('inner-flag:preview-flag')">&nbsp;模拟数据</span>
					   </div>
					</td>
					</tr>
					<tr>
					<td>
						<div style="width:100; float:left; padding-left:0" align="left">
							<input type="checkbox" name="_savePasswd" value="true" unchecked>
							<span style='font-weight:bold; color:#FFFFFF; cursor:hand' onclick="setFlag('_savePasswd')">&nbsp;保存密码&nbsp;</span>
					   </div>
					</td>
					</tr>

					<tr>
					<td>
						<div style="width:100; float:left; padding-left:4" align="left">
							<span style='cursor:hand' onclick="prepareRamdonImage()">
								<div style="width:60; float:left; padding-left:2" align="left"><script language="javascript">prepareRamdonImage()</script></div>
							</span>
					   </div>
					</td>
					</tr>
					</table>
				</div>
			</td>
			</tr>
		</table>

		</div>
	</div>

	<div class="LoginSPARK_BodyInput_button"><input name="imageField" type="image" src="script/login_new/blue/loginSPARK_08.png"  onMouseOver="this.src='script/login_new/blue/loginSPARK_08_2.png'" onMouseOut="this.src='script/login_new/blue/loginSPARK_08.png'" border="0" onclick="_saveUserName()"></div>

	<div class="LoginSPARK_BodyInput_right"></div>
	<div class="LoginSPARK_BodyBotton"></div>
	<div class="LoginSPARK_Copyright">
		<!--
	   <div style="color:#a1a19e; font-family:宋体; font-size:12px; filter: Alpha(Opacity=30);">
	   -->
	   <div>
		   <%=ChCopy%>&nbsp;&nbsp;<%=EnCopy%>&nbsp;&nbsp;版本号：<%=AppVer%>
	  </div>
	</div>

</div>


</rocket:form>
</body>

</rocket:html>
