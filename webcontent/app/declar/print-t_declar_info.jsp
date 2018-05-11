<%@ page contentType="text/html; charset=GBK" %>
<%@ taglib uri="/WEB-INF/rocket.tld" prefix="rocket" %>
<%-- template single/single-table-print.jsp --%>
<rocket:html width="750" height="400">
<head>
<title>��ӡ���ص���Ϣ</title>
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
	goBackNoUpdate();	// /txn01B01011.do
}

// ����������ӣ�ҳ�������ɺ���û���ʼ������
function __userInitPage()
{
	
}

_browse.execute( __userInitPage );
</script>
<rocket:body styleClass='body-div'>
<rocket:title caption="��ӡ���ص���Ϣ"/>
<rocket:errors/>

<!-- �û��Զ���ĺ��� -->
<script language="javascript">
function prepareHead( totalRow, pageRow, totalPage, currentPage )
{
	document.write( '<table border="0" width="100%"><tr><td>��ӡ���Գ���� [headscript] ����</td>' );
	document.write( '<td>��</td>' );
	document.write( '<td align="right">�� ' + currentPage + ' ҳ���ܹ� ' + totalPage + ' ҳ</td></tr></table>' );
}

function prepareTail( totalRow, pageRow, totalPage, currentPage )
{
	document.write( '<table border="0" width="100%"><tr><td>��ӡ���Գ���� [tailscript] ����</td>' );
	document.write( '<td>��</td>' );
	document.write( '<td align="right">�� ' + currentPage + ' ҳ���ܹ� ' + totalPage + ' ҳ</td></tr></table>' );
}
</script>

<rocket:form action="/txn01B01011">
  <p align="center">
  <rocket:print property="record" fixrow="true" pageRows="36" caption="<font size='5'><b>��ӡ���Գ����[caption]����</b></font>" note="����һ����ӡ���Ա�� [note] ����" headscript="prepareHead" tailscript="prepareTail" align="center" width="95%">
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
  </rocket:print></p>
  <p align="center" class="print-hide">
  <input type="button" name="record_printDocument" value="�� ӡ" class="menu" onclick="func_record_printDocument();" style='width:60px' >
  <input type="button" name="record_goBackNoUpdate" value="�� ��" class="menu" onclick="func_record_goBackNoUpdate();" style='width:60px' >
  </p>
  <p align="center" class="print-hide">&nbsp;</p>
  
</rocket:form>
</rocket:body>
</rocket:html>
