<%@ page contentType="text/html; charset=GBK" %>
<%@ taglib uri="/WEB-INF/rocket.tld" prefix="rocket" %>
<%-- template single/single-table-query.jsp --%>
<rocket:html width="650" height="350">
<head>
<title>��ѯ���ص��б�</title>
</head>

<script language="javascript">

// ���ӱ��ص�
function func_record_addRecord()
{
	var page = new pageDefine( "insert-t_declar_info.jsp", "���ӱ��ص�", "dialog" );
	page.addRecord();
}

// �޸ı��ص�
function func_record_updateRecord()
{
	var page = new pageDefine( "/txn01B01014.do", "�޸ı��ص�", "dialog" );
	page.addParameter( "record:bill_id", "primary-key:bill_id" );
	page.addParameter( "record:index_no", "primary-key:index_no" );
	page.updateRecord();
}

// ɾ�����ص�
function func_record_deleteRecord()
{
	var page = new pageDefine( "/txn01B01015.do", "ɾ�����ص�" );
	page.addParameter( "record:bill_id", "primary-key:bill_id" );
	page.addParameter( "record:index_no", "primary-key:index_no" );
	page.deleteRecord( "�Ƿ�ɾ��ѡ�еļ�¼" );
}

// ��ӡ�б�
function func_record_printPage()
{
	var page = new pageDefine( "/txn01B01011.do", "��ӡ�б�", "printWindow" );
	page.printPage( 2 );
}

// �鿴����
function func_record_viewRecord()
{
	var page = new pageDefine( "/txn01B01016.do", "�鿴����", "dialog" );
	page.addParameter( "record:bill_id", "primary-key:bill_id" );
	page.addParameter( "record:index_no", "primary-key:index_no" );
	page.viewRecord();
}

// ����������ӣ�ҳ�������ɺ���û���ʼ������
function __userInitPage()
{
	
}

_browse.execute( __userInitPage );
</script>
<rocket:body>
<rocket:title caption="��ѯ���ص��б�"/>
<rocket:errors/>

<rocket:form action="/txn01B01011">
  <rocket:block theme="query" property="select-key" caption="��ѯ����" width="95%">
      <rocket:text property="bill_id" caption="��˵���" datatype="string" maxlength="24" style="width:95%"/>
      <rocket:text property="index_no" caption="������" datatype="string" maxlength="10" style="width:95%"/>
      <rocket:text property="declar_no" caption="���ص���" datatype="string" maxlength="24" style="width:95%"/>
      <rocket:text property="declar_amt" caption="���ص����" datatype="string" maxlength="19" style="width:95%"/>
      <rocket:text property="declar_date" caption="���ص�����" datatype="string" maxlength="8" style="width:95%"/>
  </rocket:block>

  <rocket:grid property="record" caption="��ѯ���ص��б�" theme="gray" nowrap="true" menutheme="icon" keylist="bill_id,index_no" width="95%" navbar="bottom" fixrow="true">
      <rocket:button name="record_addRecord" caption="���ӱ��ص�" txncode="01B01013" enablerule="0" hotkey="ADD" icon="/script/button-icon/icon_add.gif" align="right" onclick="func_record_addRecord();"/>
      <rocket:button name="record_updateRecord" caption="�޸ı��ص�" txncode="01B01014" enablerule="1" hotkey="UPDATE" icon="/script/button-icon/icon_update.gif" align="right" onclick="func_record_updateRecord();"/>
      <rocket:button name="record_deleteRecord" caption="ɾ�����ص�" txncode="01B01015" enablerule="2" hotkey="DELETE" icon="/script/button-icon/icon_delete.gif" align="right" onclick="func_record_deleteRecord();"/>
      <rocket:button name="record_printPage" caption="��ӡ�б�" txncode="01B01011" enablerule="0" hotkey="PRINT" icon="/script/button-icon/icon_print.gif" align="right" onclick="func_record_printPage();"/>
      <rocket:button name="record_viewRecord" caption="�鿴����" txncode="01B01016" enablerule="1" hotkey="VIEW" icon="/script/button-icon/icon_view.gif" align="right" onclick="func_record_viewRecord();"/>
      <rocket:cell property="bill_id" caption="��˵���" style="width:12%" />
      <rocket:cell property="index_no" caption="������" style="width:10%" />
      <rocket:cell property="declar_no" caption="���ص���" style="width:12%" />
      <rocket:cell property="declar_amt" caption="���ص����" style="width:12%" />
      <rocket:cell property="declar_date" caption="���ص�����" style="width:10%" />
      <rocket:cell property="bk_number1" caption="���ñ��1" style="width:10%" />
      <rocket:cell property="bk_number2" caption="���ñ��2" style="width:10%" />
      <rocket:cell property="bk_value1" caption="������ֵ1" style="width:12%" />
      <rocket:cell property="bk_value2" caption="������ֵ2" style="width:12%" />
      <rocket:cell property="bk_type1" caption="��������1" style="width:10%" />
      <rocket:cell property="bk_type2" caption="��������2" style="width:10%" />
      <rocket:cell property="bk_flag1" caption="���ñ�־1" style="width:10%" />
      <rocket:cell property="bk_flag2" caption="���ñ�־2" style="width:10%" />
      <rocket:cell property="bk_date1" caption="��������1" style="width:10%" />
      <rocket:cell property="bk_date2" caption="��������2" style="width:10%" />
      <rocket:cell property="bk_time1" caption="����ʱ��1" style="width:10%" />
      <rocket:cell property="bk_time2" caption="����ʱ��2" style="width:10%" />
      <rocket:cell property="bk_s_str1" caption="���ô�1" style="width:12%" />
      <rocket:cell property="bk_s_str2" caption="���ô�2" style="width:12%" />
      <rocket:cell property="bk_l_str1" caption="���ó���1" style="width:20%" />
      <rocket:cell property="bk_l_str2" caption="���ó���2" style="width:20%" />
      <rocket:cell property="bk_xl_str1" caption="���ó�����1" style="width:20%" visible="false" />
      <rocket:cell property="bk_xl_str2" caption="���ó�����2" style="width:20%" visible="false" />
      <rocket:cell property="memo" caption="��ע" style="width:20%" />
      <rocket:cell property="dac" caption="dacУ��" style="width:12%" />
  </rocket:grid>

</rocket:form>
</rocket:body>
</rocket:html>
