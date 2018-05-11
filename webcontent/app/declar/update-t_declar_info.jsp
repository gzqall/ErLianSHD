<%@ page contentType="text/html; charset=GBK" %>
<%@ taglib uri="/WEB-INF/rocket.tld" prefix="rocket" %>
<%-- template single/single-table-update.jsp --%>
<rocket:html width="650" height="350">
<head>
<title>�޸ı��ص���Ϣ</title>
</head>

<script language="javascript">

// �� ��
function func_record_saveAndExit()
{
	saveAndExit( '', '���汨�ص���Ϣ��' );	// /txn01B01011.do
}

// �� ��
function func_record_goBack()
{
	goBack();	// /txn01B01011.do
}

// ����������ӣ�ҳ�������ɺ���û���ʼ������
function __userInitPage()
{
	
}

_browse.execute( __userInitPage );
</script>
<rocket:body>
<rocket:title caption="�޸ı��ص���Ϣ"/>
<rocket:errors/>

<rocket:form action="/txn01B01012">
  <rocket:frame property="primary-key" width="95%">
      <rocket:hidden property="bill_id" caption="��˵���" style="width:95%"/>
      <rocket:hidden property="index_no" caption="������" style="width:95%"/>
  </rocket:frame>

  <rocket:block property="record" caption="�޸ı��ص���Ϣ" width="95%">
      <rocket:button name="record_saveAndExit" caption="�� ��" hotkey="SAVE_CLOSE" onclick="func_record_saveAndExit();"/>
      <rocket:button name="record_goBack" caption="�� ��" hotkey="CLOSE" onclick="func_record_goBack();"/>
      <rocket:hidden property="bill_id" caption="��˵���" datatype="string" maxlength="24" style="width:95%"/>
      <rocket:hidden property="index_no" caption="������" datatype="string" maxlength="10" style="width:95%"/>
      <rocket:text property="declar_no" caption="���ص���" datatype="string" maxlength="24" minlength="1" style="width:95%"/>
      <rocket:text property="declar_amt" caption="���ص����" datatype="string" maxlength="19" style="width:95%"/>
      <rocket:text property="declar_date" caption="���ص�����" datatype="string" maxlength="8" style="width:95%"/>
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
      <rocket:text property="memo" caption="��ע" datatype="string" maxlength="255" colspan="2" style="width:98%"/>
      <rocket:text property="dac" caption="dacУ��" datatype="string" maxlength="16" style="width:95%"/>
  </rocket:block>

</rocket:form>
</rocket:body>
</rocket:html>
