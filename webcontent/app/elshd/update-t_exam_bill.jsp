<%@ page contentType="text/html; charset=GBK" %>
<%@ taglib uri="/WEB-INF/rocket.tld" prefix="rocket" %>
<%-- template single/single-table-update.jsp --%>
<rocket:html width="650" height="350">
<head>
<title>�޸���˵���Ϣ</title>
</head>

<script language="javascript">

// �� ��
function func_record_saveAndExit()
{
	saveAndExit( '', '������˵���Ϣ��' );	// /txn01A01011.do
}

// �� ��
function func_record_goBack()
{
	goBack();	// /txn01A01011.do
}

// ����������ӣ�ҳ�������ɺ���û���ʼ������
function __userInitPage()
{
	
}

_browse.execute( __userInitPage );
</script>
<rocket:body>
<rocket:title caption="�޸���˵���Ϣ"/>
<rocket:errors/>

<rocket:form action="/txn01A01012">
  <rocket:frame property="primary-key" width="95%">
      <rocket:hidden property="bill_id" caption="��˵����" style="width:95%"/>
  </rocket:frame>

  <rocket:block property="record" caption="�޸���˵���Ϣ" width="95%">
      <rocket:button name="record_saveAndExit" caption="�� ��" hotkey="SAVE_CLOSE" onclick="func_record_saveAndExit();"/>
      <rocket:button name="record_goBack" caption="�� ��" hotkey="CLOSE" onclick="func_record_goBack();"/>
      <rocket:hidden property="bill_id" caption="��˵����" datatype="string" maxlength="24" style="width:95%"/>
      <rocket:text property="taxpayer_id" caption="��˰�˱��" datatype="string" maxlength="32" minlength="1" style="width:95%"/>
      <rocket:textarea property="taxpayer_name" caption="��˰������" colspan="2" rows="4" maxlength="500" style="width:98%"/>
      <rocket:select property="imex_type" valueset="#i=����;e=����" caption="����������" notnull="true" style="width:95%"/>
      <rocket:text property="declar_tot_num" caption="���ص��ܼ�¼��" datatype="string" maxlength="10" minlength="1" style="width:95%"/>
      <rocket:text property="declar_tot_amt" caption="���ص��ܽ��" datatype="string" maxlength="19" minlength="1" style="width:95%"/>
      <rocket:hidden property="create_date" caption="¼������" datatype="string" maxlength="8" style="width:95%"/>
      <rocket:hidden property="create_time" caption="¼��ʱ��" datatype="string" maxlength="6" style="width:95%"/>
      <rocket:hidden property="create_user" caption="¼����" datatype="string" maxlength="100" style="width:95%"/>
      <rocket:text property="check_date" caption="�������" datatype="string" maxlength="8" style="width:95%"/>
      <rocket:text property="check_time" caption="���ʱ��" datatype="string" maxlength="6" style="width:95%"/>
      <rocket:text property="check_user" caption="�����" datatype="string" maxlength="100" style="width:95%"/>
      <rocket:select property="bill_status" valueset="#1=¼��;2=���ͨ��;3=��˲�ͨ��" caption="״̬" notnull="true" style="width:95%"/>
      <rocket:text property="bk_number1" caption="���ñ��1" datatype="string" maxlength="10" style="width:95%"/>
      <rocket:text property="bk_number2" caption="���ñ��2" datatype="string" maxlength="10" style="width:95%"/>
      <rocket:text property="bk_value1" caption="������ֵ1" datatype="string" maxlength="19" style="width:95%"/>
      <rocket:text property="bk_value2" caption="������ֵ2" datatype="string" maxlength="19" style="width:95%"/>
      <rocket:text property="bk_type1" caption="��������1" datatype="string" maxlength="1" style="width:95%"/>
      <rocket:text property="bk_type2" caption="��������2" datatype="string" maxlength="1" style="width:95%"/>
      <rocket:text property="bk_flag1" caption="���ñ�־1" datatype="string" maxlength="10" style="width:95%"/>
      <rocket:text property="bk_flag2" caption="���ñ�־2" datatype="string" maxlength="10" style="width:95%"/>
      <rocket:text property="bk_date1" caption="��������1" datatype="string" maxlength="8" style="width:95%"/>
      <rocket:text property="bk_date2" caption="��������2" datatype="string" maxlength="8" style="width:95%"/>
      <rocket:text property="bk_time1" caption="����ʱ��1" datatype="string" maxlength="6" style="width:95%"/>
      <rocket:text property="bk_time2" caption="����ʱ��2" datatype="string" maxlength="6" style="width:95%"/>
      <rocket:text property="bk_s_str1" caption="���ô�1" datatype="string" maxlength="24" style="width:95%"/>
      <rocket:text property="bk_s_str2" caption="���ô�2" datatype="string" maxlength="24" style="width:95%"/>
      <rocket:text property="bk_l_str1" caption="���ó���1" datatype="string" maxlength="100" style="width:95%"/>
      <rocket:text property="bk_l_str2" caption="���ó���2" datatype="string" maxlength="100" style="width:95%"/>
      <rocket:textarea property="bk_xl_str1" caption="���ó�����1" colspan="2" rows="4" maxlength="300" style="width:98%"/>
      <rocket:textarea property="bk_xl_str2" caption="���ó�����2" colspan="2" rows="4" maxlength="300" style="width:98%"/>
      <rocket:textarea property="memo" caption="��ע" colspan="2" rows="4" maxlength="500" style="width:98%"/>
      <rocket:text property="dac" caption="dacУ��" datatype="string" maxlength="16" style="width:95%"/>
  </rocket:block>

</rocket:form>
</rocket:body>
</rocket:html>
