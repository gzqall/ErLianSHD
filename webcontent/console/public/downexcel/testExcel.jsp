<%@ page contentType="text/html; charset=gb2312" %>
<%@ taglib uri="/WEB-INF/rocket.tld" prefix="rocket" %>

<rocket:html>
<head>
<title>
  测试Excel功能 
</title>
<script language="javascript">
	function setFrameURL(url){		
		IFrameobj=document.getElementById(TabsiFrameName);
		IFrameobj.src=url;
	}	
</script>
</head>
<rocket:body>
<rocket:title caption="Excel下载功能,使用自定义的Java类"/>
	
<rocket:form action="/txn994401">

<rocket:block property="select-key" width="95%" caption="Excel下载功能测测试">
	<rocket:text property="unitno" width="10" caption="单位代码" style="width:100%"/>
	<rocket:text property="unitname" width="10" caption="单位名称" style="width:100%"/>
	<rocket:submit property="submit" width="20" value="Excel文件下载"/>
</rocket:block>

</rocket:form>

<rocket:title caption="Excel下载功能,使用ExcelService类"/>	
<rocket:form action="/txn994402">
<rocket:block property="select-key" width="95%" caption="Excel下载功能测测试">
	<rocket:text property="unitno" width="10" caption="单位代码" style="width:100%"/>
	<rocket:text property="unitname" width="10" caption="单位名称" style="width:100%"/>
	<rocket:submit property="submit" width="20" value="Excel文件下载"/>
</rocket:block>


</rocket:form>
</rocket:body>
</rocket:html>
