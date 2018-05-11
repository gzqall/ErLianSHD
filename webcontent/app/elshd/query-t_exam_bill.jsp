<%@ page contentType="text/html; charset=GBK" %>
<%@ taglib uri="/WEB-INF/rocket.tld" prefix="rocket" %>
<%-- template single/single-table-query.jsp --%>

<rocket:html width="650" height="350">
<head>
<title>��ѯ��˵��б�</title>
</head>

<script language="javascript">
// ������˵�
function func_record_addRecord()
{
	var page = new pageDefine( "insert-t_exam_bill.jsp", "������˵�", "dialog" );
	page.addRecord();
}

// �޸���˵�
function func_record_updateRecord()
{
	var page = new pageDefine( "/txn01A01014.do", "�޸���˵�", "dialog" );
	page.addParameter( "record:bill_id", "primary-key:bill_id" );
	page.updateRecord();
}

// ɾ����˵�
function func_record_deleteRecord()
{
	var page = new pageDefine( "/txn01A01015.do", "ɾ����˵�" );
	page.addParameter( "record:bill_id", "primary-key:bill_id" );
	page.deleteRecord( "�Ƿ�ɾ��ѡ�еļ�¼" );
}

// ��ӡ�б�
function func_record_printPage()
{
	var page = new pageDefine( "/txn01A01011.do", "��ӡ�б�", "printWindow" );
	page.printPage( 2 );
}

// �鿴����
function func_record_viewRecord()
{
	var page = new pageDefine( "/txn01A01016.do", "�鿴����", "dialog" );
	page.addParameter( "record:bill_id", "primary-key:bill_id" );
	page.viewRecord();
}

function setTxnPayerName() {
   var name = getFormFieldValue("select-key:taxpayer_name_hidden",0);
   setFormFieldValue( "select-key:taxpayer_name", 0, name );
}

// ����������ӣ�ҳ�������ɺ���û���ʼ������
function __userInitPage()
{
	
}

_browse.execute( __userInitPage );
</script>

<rocket:body>
<rocket:title caption="��ѯ��˵��б�"/>
<rocket:errors/>

<rocket:form action="/txn01A01011">

	<rocket:block property="select-key" caption="��ѯ����" theme="query" width="95%">
		<rocket:text property="bill_id" caption="��˵����" maxlength="24" datatype="string" style="width:95%"/>
		<rocket:browsebox property="taxpayer_id" caption="��˰�˱��" multiple="false" valueset="queryTaxPayer" show="mix" namebox="taxpayer_name_hidden" style="width:95%" onchange="setTxnPayerName()"/>
		<rocket:text property="taxpayer_name" caption="��˰������" maxlength="500" datatype="string" style="width:95%"/>
		<rocket:select property="imex_type" caption="����������" valueset="#i=����;e=����" style="width:95%"/>
		<rocket:text property="declar_tot_num" caption="���ص��ܼ�¼��" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="declar_tot_amt" caption="���ص��ܽ��" maxlength="19" datatype="string" style="width:95%"/>
		<rocket:column caption="¼������" style="width:98%">

			<table cellpadding="0" cellspacing="0" border="0" width="97%">
				<tr>
					<td width="50%">
						<rocket:datebox property="b_date" caption="��ʼ����" style="width:100%"/>
					</td>
					<td width="3%">&nbsp��</td>
					<td width="50%">
						<rocket:datebox property="e_date" caption="��������" style="width:100%"/>
					</td>
				</tr>
			</table>
		</rocket:column>

		<rocket:browsebox property="create_user" caption="¼����" multiple="false" valueset="�û��б�" show="code" style="width:95%"/>
	</rocket:block>

	<rocket:grid property="record" caption="��ѯ��˵��б�" keylist="bill_id" nowrap="true" theme="gray" fixrow="true" navbar="bottom" width="95%" menutheme="icon">
		<rocket:button name="record_addRecord" caption="������˵�" hotkey="ADD" enablerule="0" txncode="01A01013" icon="/script/button-icon/icon_add.gif" align="right" onclick="func_record_addRecord();"/>
		<rocket:button name="record_updateRecord" caption="�޸���˵�" enablerule="1" txncode="01A01014" icon="/script/button-icon/icon_update.gif" visible="false" align="right" onclick="func_record_updateRecord();"/>
		<rocket:button name="record_deleteRecord" caption="ɾ����˵�" enablerule="2" txncode="01A01015" icon="/script/button-icon/icon_delete.gif" visible="false" align="right" onclick="func_record_deleteRecord();"/>
		<rocket:button name="record_printPage" caption="��ӡ�б�" hotkey="PRINT" enablerule="0" txncode="01A01011" icon="/script/button-icon/icon_print.gif" visible="false" align="right" onclick="func_record_printPage();"/>
		<rocket:button name="record_viewRecord" caption="�鿴����" hotkey="VIEW" enablerule="1" txncode="01A01016" icon="/script/button-icon/icon_view.gif" align="right" onclick="func_record_viewRecord();"/>
		<rocket:cell property="bill_id" caption="��˵����" style="width:12%"/>
		<rocket:cell property="taxpayer_id" caption="��˰�˱��" style="width:12%"/>
		<rocket:cell property="taxpayer_name" caption="��˰������" style="width:20%" visible="false"/>
		<rocket:cell property="imex_type" caption="����������" valueset="#i=����;e=����" style="width:12%"/>
		<rocket:cell property="declar_tot_num" caption="���ص��ܼ�¼��" style="width:10%"/>
		<rocket:cell property="declar_tot_amt" caption="���ص��ܽ��" style="width:12%"/>
		<rocket:cell property="create_date" caption="¼������" style="width:10%" visible="false"/>
		<rocket:cell property="create_time" caption="¼��ʱ��" style="width:10%" visible="false"/>
		<rocket:cell property="create_user" caption="¼����" style="width:10%" visible="false"/>
		<rocket:hidden property="check_date" caption="�������" style="width:10%"/>
		<rocket:hidden property="check_time" caption="���ʱ��" style="width:10%"/>
		<rocket:cell property="check_user" caption="�����" style="width:20%"/>
		<rocket:cell property="bill_status" caption="״̬" valueset="#1=¼��;2=���ͨ��;3=��˲�ͨ��" style="width:12%"/>
		<rocket:hidden property="bk_number1" caption="���ñ��1" style="width:10%"/>
		<rocket:hidden property="bk_number2" caption="���ñ��2" style="width:10%"/>
		<rocket:hidden property="bk_value1" caption="������ֵ1" style="width:12%"/>
		<rocket:hidden property="bk_value2" caption="������ֵ2" style="width:12%"/>
		<rocket:hidden property="bk_type1" caption="��������1" style="width:10%"/>
		<rocket:hidden property="bk_type2" caption="��������2" style="width:10%"/>
		<rocket:hidden property="bk_flag1" caption="���ñ�־1" style="width:10%"/>
		<rocket:hidden property="bk_flag2" caption="���ñ�־2" style="width:10%"/>
		<rocket:hidden property="bk_date1" caption="��������1" style="width:10%"/>
		<rocket:hidden property="bk_date2" caption="��������2" style="width:10%"/>
		<rocket:hidden property="bk_time1" caption="����ʱ��1" style="width:10%"/>
		<rocket:hidden property="bk_time2" caption="����ʱ��2" style="width:10%"/>
		<rocket:hidden property="bk_s_str1" caption="���ô�1" style="width:12%"/>
		<rocket:hidden property="bk_s_str2" caption="���ô�2" style="width:12%"/>
		<rocket:hidden property="bk_l_str1" caption="���ó���1" style="width:20%"/>
		<rocket:hidden property="bk_l_str2" caption="���ó���2" style="width:20%"/>
		<rocket:hidden property="bk_xl_str1" caption="���ó�����1" style="width:20%"/>
		<rocket:hidden property="bk_xl_str2" caption="���ó�����2" style="width:20%"/>
		<rocket:cell property="memo" caption="��ע" style="width:20%" visible="true"/>
		<rocket:hidden property="dac" caption="dacУ��" style="width:12%"/>
	</rocket:grid>
</rocket:form>
</rocket:body>
</rocket:html>


