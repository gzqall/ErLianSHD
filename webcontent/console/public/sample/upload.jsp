<%@ page contentType="text/html; charset=gb2312" %>
<%@ taglib uri="/WEB-INF/rocket.tld" prefix="rocket" %>

<rocket:html>
<head>
<title>
�ϴ��ļ�����
</title>
</head>
<rocket:body>
<rocket:title caption="�ϴ��ļ�����"/>
<rocket:errors/>
<rocket:form action="/txn100002" enctype="multipart/form-data">

<rocket:block property="file" width="95%" caption="�ϴ��ļ�����">
	<rocket:button name="SaveFile" caption="�ϴ��ļ�" onclick="saveRecord('�ϴ��ļ��ɹ�','�ϴ��ļ�ʧ��');"/>
	
	<rocket:text property="description" caption="�ļ�����" style="width:100%"/>
	<rocket:file property="uploadFile" caption="�ϴ��ļ�" accept="*.jsp,*.txn;*.lst;*.isp" style="width:100%"/>
</rocket:block>

</rocket:form>
</rocket:body>
</rocket:html>
