<%@ page contentType="text/html; charset=GBK" %>
<%@ taglib uri="/WEB-INF/rocket.tld" prefix="rocket" %>
<%-- template single/single-table-insert.jsp --%>

<rocket:html width="1000" height="750">
<head>
<title>������˵���Ϣ</title>
</head>

<script language="javascript">
// �� ��
function func_record_saveRecord()
{
	saveRecord( '', '������˵���Ϣ��' );
}
function func_saveAndPrint() {
    var page = new pageDefine("/txn01A01017.do", "�鿴����", "window");
    page.addParameters("record", "record");
    page.addParameters("declar", "declar");
    page.addValue("true", "declar:view_flag");
    page.viewRecord();
}
// ���沢����
function func_record_saveAndContinue()
{
	saveAndContinue( '', '������˵���Ϣ��' );
}

// ���沢�ر�
function func_record_saveAndExit()
{
	saveAndExit( '', '������˵���Ϣ��' );	// /txn01A01011.do
}

// �� ��
function func_record_goBack()
{
	goBack();	// /txn01A01011.do
}

function setTxnPayerName() {
    var name = getFormFieldValue("record:taxpayer_name_hidden",0);
    setFormFieldValue( "record:taxpayer_name", 0, name );
}

// ����������ӣ�ҳ�������ɺ���û���ʼ������
function __userInitPage()
{
	
}

_browse.execute( __userInitPage );
</script>

<rocket:body>
<rocket:title caption="������˵���Ϣ"/>
<rocket:errors/>

<rocket:form action="/txn01A01013">

	<rocket:block property="record" caption="��˵���Ϣ" columns="2" width="95%">
		<rocket:hidden property="bill_id" caption="��˵����" style="width:95%"/>
		<rocket:browsebox property="taxpayer_id" caption="��˰�˱��" multiple="false" valueset="queryTaxPayer" show="mix" check="false" namebox="taxpayer_name_hidden" notnull="true" style="width:95%" onchange="setTxnPayerName()"/>
		<rocket:text property="taxpayer_name" caption="��˰������" maxlength="500" style="width:95%"/>
		<rocket:select property="imex_type" caption="����������" valueset="#i=����;e=����" notnull="true" style="width:95%"/>
		<rocket:text property="declar_tot_num" caption="���ص��ܼ�¼��" maxlength="10" minlength="1" datatype="string" style="width:95%"/>
		<rocket:text property="declar_tot_amt" caption="���ص��ܽ��" maxlength="19" minlength="1" datatype="string" style="width:95%"/>
		<rocket:hidden property="create_date" caption="¼������" style="width:95%" maxlength="8" datatype="string"/>
		<rocket:hidden property="create_time" caption="¼��ʱ��" style="width:95%" maxlength="6" datatype="string"/>
		<rocket:hidden property="create_user" caption="¼����" style="width:95%" maxlength="100" datatype="string"/>
		<rocket:hidden property="check_date" caption="�������" style="width:95%" maxlength="8" datatype="string"/>
		<rocket:hidden property="check_time" caption="���ʱ��" style="width:95%" maxlength="6" datatype="string"/>
		<rocket:browsebox property="check_user" caption="�����" multiple="false" valueset="�û��б�" data="name" check="false" style="width:95%"/>
		<rocket:hidden property="bill_status" caption="״̬" value="1" style="width:95%"/>
		<rocket:textarea property="memo" caption="��ע" rows="4" maxlength="500" colspan="2" style="width:98%"/>
		<rocket:hidden property="dac" caption="dacУ��" style="width:95%" maxlength="16" datatype="string"/>
	</rocket:block>

	<rocket:block property="declar" caption="���ص���Ϣ" columns="6" width="95%">
		<rocket:text property="1" caption="1" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="2" caption="2" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="3" caption="3" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="4" caption="4" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="5" caption="5" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="6" caption="6" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="7" caption="7" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="8" caption="8" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="9" caption="9" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="10" caption="10" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="11" caption="11" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="12" caption="12" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="13" caption="13" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="14" caption="14" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="15" caption="15" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="16" caption="16" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="17" caption="17" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="18" caption="18" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="19" caption="19" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="20" caption="20" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="21" caption="21" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="22" caption="22" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="23" caption="23" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="24" caption="24" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="25" caption="25" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="26" caption="26" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="27" caption="27" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="28" caption="28" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="29" caption="29" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="30" caption="30" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="31" caption="31" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="32" caption="32" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="33" caption="33" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="34" caption="34" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="35" caption="35" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="36" caption="36" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="37" caption="37" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="38" caption="38" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="39" caption="39" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="40" caption="40" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="41" caption="41" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="42" caption="42" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="43" caption="43" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="44" caption="44" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="45" caption="45" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="46" caption="46" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="47" caption="47" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="48" caption="48" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="49" caption="49" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="50" caption="50" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="51" caption="51" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="52" caption="52" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="53" caption="53" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="54" caption="54" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="55" caption="55" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="56" caption="56" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="57" caption="57" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="58" caption="58" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="59" caption="59" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="60" caption="60" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="61" caption="61" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="62" caption="62" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="63" caption="63" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="64" caption="64" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="65" caption="65" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="66" caption="66" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="67" caption="67" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="68" caption="68" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="69" caption="69" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="70" caption="70" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="71" caption="71" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="72" caption="72" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="73" caption="73" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="74" caption="74" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="75" caption="75" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="76" caption="76" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="77" caption="77" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="78" caption="78" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="79" caption="79" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="80" caption="80" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="81" caption="81" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="82" caption="82" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="83" caption="83" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="84" caption="84" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="85" caption="85" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="86" caption="86" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="87" caption="87" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="88" caption="88" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="89" caption="89" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="90" caption="90" maxlength="10" datatype="string" style="width:95%"/>
	</rocket:block>

	<rocket:block property="button" caption="����" width="95%">
		<rocket:button name="record_saveRecord" caption="���沢��ӡ" position="frame" onclick="func_saveAndPrint();"/>
		<rocket:button name="record_saveAndContinue" caption="���沢����" hotkey="SAVE_CONTINUE" position="frame" onclick="func_record_saveAndContinue();"/>
		<rocket:button name="record_saveAndExit" caption="���沢�ر�" hotkey="SAVE_CLOSE" position="frame" onclick="func_record_saveAndExit();"/>
		<rocket:button name="record_goBack" caption="�� ��" hotkey="CLOSE" visible="false" position="frame" onclick="func_record_goBack();"/>
	</rocket:block>
</rocket:form>
</rocket:body>
</rocket:html>


