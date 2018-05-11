<%@ page contentType="text/html; charset=gb2312" %>
<%@ taglib uri="/WEB-INF/rocket.tld" prefix="rocket" %>

<rocket:html>
<head>
<title>
上传文件测试
</title>
</head>
<rocket:body>
<rocket:title caption="上传文件测试"/>
<rocket:errors/>
<rocket:form action="/txn100002" enctype="multipart/form-data">

<rocket:block property="file" width="95%" caption="上传文件测试">
	<rocket:button name="SaveFile" caption="上传文件" onclick="saveRecord('上传文件成功','上传文件失败');"/>
	
	<rocket:text property="description" caption="文件描述" style="width:100%"/>
	<rocket:file property="uploadFile" caption="上传文件" accept="*.jsp,*.txn;*.lst;*.isp" style="width:100%"/>
</rocket:block>

</rocket:form>
</rocket:body>
</rocket:html>
