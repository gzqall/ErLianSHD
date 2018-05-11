<%@ page contentType="text/html; charset=GBK" %>
<%@ taglib uri="/WEB-INF/rocket.tld" prefix="rocket" %>
<%-- template single/single-table-view.jsp --%>

<rocket:html width="1000" height="750">
<head>
<title>�鿴��˵���Ϣ</title>
</head>

<script language="javascript">
// �� ӡ
function func_record_printDocument()
{
	print(document);
}

// �� ��
function func_record_goBackNoUpdate()
{
	goBackNoUpdate();	// /txn01A01011.do
}

// ����������ӣ�ҳ�������ɺ���û���ʼ������
function __userInitPage()
{
	
}

_browse.execute( __userInitPage );
</script>

<rocket:body styleClass="body-div">
<rocket:title caption="�鿴��˵���Ϣ"/>
<rocket:errors/>

<rocket:form action="/txn01A01016">
	<rocket:frame property="primary-key" width="95%">
		<rocket:hidden property="bill_id" caption="��˵����" style="width:95%"/>
	</rocket:frame>

	<rocket:block property="record" caption="��˵���Ϣ" theme="print" align="center" width="95%" bodyline="true" headheight="20" headalign="center">
		<rocket:cell property="bill_id" caption="��˵����" style="width:95%"/>
		<rocket:cell property="taxpayer_id" caption="��˰�˱��" style="width:95%"/>
		<rocket:cell property="taxpayer_name" caption="��˰������" datatype="text" colspan="2" style="width:98%"/>
		<rocket:cell property="imex_type" caption="����������" valueset="#i=����;e=����" style="width:95%"/>
		<rocket:cell property="declar_tot_num" caption="���ص��ܼ�¼��" style="width:95%"/>
		<rocket:cell property="declar_tot_amt" caption="���ص��ܽ��" style="width:95%"/>
		<rocket:cell property="create_date" caption="¼������" datatype="date" style="width:95%"/>
		<rocket:cell property="create_time" caption="¼��ʱ��" datatype="string" style="width:95%" visible="false"/>
		<rocket:cell property="create_user" caption="¼����" datatype="string" style="width:95%"/>
		<rocket:cell property="check_user" caption="������" datatype="string" style="width:95%"/>
		<rocket:cell property="bill_status" caption="״̬" valueset="#1=¼��;2=���ͨ��;3=��˲�ͨ��" style="width:95%" visible="false"/>
		<rocket:cell property="memo" caption="��ע" datatype="text" colspan="2" style="width:98%"/>
	</rocket:block>
	&nbsp;

	<rocket:block property="declar" caption="���ص���Ϣ" theme="print" columns="6" align="center" width="95%" height="200" bodyline="true" headheight="50" headalign="center">
		<rocket:cell property="1" caption="1" style="width:95%"/>
		<rocket:cell property="2" caption="2" style="width:95%"/>
		<rocket:cell property="3" caption="3" style="width:95%"/>
		<rocket:cell property="4" caption="4" style="width:95%"/>
		<rocket:cell property="5" caption="5" style="width:95%"/>
		<rocket:cell property="6" caption="6" style="width:95%"/>
		<rocket:cell property="7" caption="7" style="width:95%"/>
		<rocket:cell property="8" caption="8" style="width:95%"/>
		<rocket:cell property="9" caption="9" style="width:95%"/>
		<rocket:cell property="10" caption="10" style="width:95%"/>
		<rocket:cell property="11" caption="11" style="width:95%"/>
		<rocket:cell property="12" caption="12" style="width:95%"/>
		<rocket:cell property="13" caption="13" style="width:95%"/>
		<rocket:cell property="14" caption="14" style="width:95%"/>
		<rocket:cell property="15" caption="15" style="width:95%"/>
		<rocket:cell property="16" caption="16" style="width:95%"/>
		<rocket:cell property="17" caption="17" style="width:95%"/>
		<rocket:cell property="18" caption="18" style="width:95%"/>
		<rocket:cell property="19" caption="19" style="width:95%"/>
		<rocket:cell property="20" caption="20" style="width:95%"/>
		<rocket:cell property="21" caption="21" style="width:95%"/>
		<rocket:cell property="22" caption="22" style="width:95%"/>
		<rocket:cell property="23" caption="23" style="width:95%"/>
		<rocket:cell property="24" caption="24" style="width:95%"/>
		<rocket:cell property="25" caption="25" style="width:95%"/>
		<rocket:cell property="26" caption="26" style="width:95%"/>
		<rocket:cell property="27" caption="27" style="width:95%"/>
		<rocket:cell property="28" caption="28" style="width:95%"/>
		<rocket:cell property="29" caption="29" style="width:95%"/>
		<rocket:cell property="30" caption="30" style="width:95%"/>
		<rocket:cell property="31" caption="31" style="width:95%"/>
		<rocket:cell property="32" caption="32" style="width:95%"/>
		<rocket:cell property="33" caption="33" style="width:95%"/>
		<rocket:cell property="34" caption="34" style="width:95%"/>
		<rocket:cell property="35" caption="35" style="width:95%"/>
		<rocket:cell property="36" caption="36" style="width:95%"/>
		<rocket:cell property="37" caption="37" style="width:95%"/>
		<rocket:cell property="38" caption="38" style="width:95%"/>
		<rocket:cell property="39" caption="39" style="width:95%"/>
		<rocket:cell property="40" caption="40" style="width:95%"/>
		<rocket:cell property="41" caption="41" style="width:95%"/>
		<rocket:cell property="42" caption="42" style="width:95%"/>
		<rocket:cell property="43" caption="43" style="width:95%"/>
		<rocket:cell property="44" caption="44" style="width:95%"/>
		<rocket:cell property="45" caption="45" style="width:95%"/>
		<rocket:cell property="46" caption="46" style="width:95%"/>
		<rocket:cell property="47" caption="47" style="width:95%"/>
		<rocket:cell property="48" caption="48" style="width:95%"/>
		<rocket:cell property="49" caption="49" style="width:95%"/>
		<rocket:cell property="50" caption="50" style="width:95%"/>
		<rocket:cell property="51" caption="51" style="width:95%"/>
		<rocket:cell property="52" caption="52" style="width:95%"/>
		<rocket:cell property="53" caption="53" style="width:95%"/>
		<rocket:cell property="54" caption="54" style="width:95%"/>
		<rocket:cell property="55" caption="55" style="width:95%"/>
		<rocket:cell property="56" caption="56" style="width:95%"/>
		<rocket:cell property="57" caption="57" style="width:95%"/>
		<rocket:cell property="58" caption="58" style="width:95%"/>
		<rocket:cell property="59" caption="59" style="width:95%"/>
		<rocket:cell property="60" caption="60" style="width:95%"/>
		<rocket:cell property="61" caption="61" style="width:95%"/>
		<rocket:cell property="62" caption="62" style="width:95%"/>
		<rocket:cell property="63" caption="63" style="width:95%"/>
		<rocket:cell property="64" caption="64" style="width:95%"/>
		<rocket:cell property="65" caption="65" style="width:95%"/>
		<rocket:cell property="66" caption="66" style="width:95%"/>
		<rocket:cell property="67" caption="67" style="width:95%"/>
		<rocket:cell property="68" caption="68" style="width:95%"/>
		<rocket:cell property="69" caption="69" style="width:95%"/>
		<rocket:cell property="70" caption="70" style="width:95%"/>
		<rocket:cell property="71" caption="71" style="width:95%"/>
		<rocket:cell property="72" caption="72" style="width:95%"/>
		<rocket:cell property="73" caption="73" style="width:95%"/>
		<rocket:cell property="74" caption="74" style="width:95%"/>
		<rocket:cell property="75" caption="75" style="width:95%"/>
		<rocket:cell property="76" caption="76" style="width:95%"/>
		<rocket:cell property="77" caption="77" style="width:95%"/>
		<rocket:cell property="78" caption="78" style="width:95%"/>
		<rocket:cell property="79" caption="79" style="width:95%"/>
		<rocket:cell property="80" caption="80" style="width:95%"/>
		<rocket:cell property="81" caption="81" style="width:95%"/>
		<rocket:cell property="82" caption="82" style="width:95%"/>
		<rocket:cell property="83" caption="83" style="width:95%"/>
		<rocket:cell property="84" caption="84" style="width:95%"/>
		<rocket:cell property="85" caption="85" style="width:95%"/>
		<rocket:cell property="86" caption="86" style="width:95%"/>
		<rocket:cell property="87" caption="87" style="width:95%"/>
		<rocket:cell property="88" caption="88" style="width:95%"/>
		<rocket:cell property="89" caption="89" style="width:95%"/>
		<rocket:cell property="90" caption="90" style="width:95%"/>
	</rocket:block>

	<p align="center" class="print-menu">
		<input type="button" style="width:60px" name="record_printDocument" value="�� ӡ" class="menu" onclick="func_record_printDocument();"/>
		<input type="button" style="width:60px" name="record_goBackNoUpdate" value="�� ��" class="menu" onclick="func_record_goBackNoUpdate();"/>
	</p>

	<p align="center" class="print-hide">&nbsp;</p>
</rocket:form>
</rocket:body>
</rocket:html>


