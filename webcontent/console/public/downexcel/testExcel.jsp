<%@ page contentType="text/html; charset=gb2312" %>
<%@ taglib uri="/WEB-INF/rocket.tld" prefix="rocket" %>

<rocket:html>
<head>
<title>
  ����Excel���� 
</title>
<script language="javascript">
	function setFrameURL(url){		
		IFrameobj=document.getElementById(TabsiFrameName);
		IFrameobj.src=url;
	}	
</script>
</head>
<rocket:body>
<rocket:title caption="Excel���ع���,ʹ���Զ����Java��"/>
	
<rocket:form action="/txn994401">

<rocket:block property="select-key" width="95%" caption="Excel���ع��ܲ����">
	<rocket:text property="unitno" width="10" caption="��λ����" style="width:100%"/>
	<rocket:text property="unitname" width="10" caption="��λ����" style="width:100%"/>
	<rocket:submit property="submit" width="20" value="Excel�ļ�����"/>
</rocket:block>

</rocket:form>

<rocket:title caption="Excel���ع���,ʹ��ExcelService��"/>	
<rocket:form action="/txn994402">
<rocket:block property="select-key" width="95%" caption="Excel���ع��ܲ����">
	<rocket:text property="unitno" width="10" caption="��λ����" style="width:100%"/>
	<rocket:text property="unitname" width="10" caption="��λ����" style="width:100%"/>
	<rocket:submit property="submit" width="20" value="Excel�ļ�����"/>
</rocket:block>


</rocket:form>
</rocket:body>
</rocket:html>
