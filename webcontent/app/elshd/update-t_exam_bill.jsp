<%@ page contentType="text/html; charset=GBK" %>
<%@ taglib uri="/WEB-INF/rocket.tld" prefix="rocket" %>
<%-- template single/single-table-update.jsp --%>
<rocket:html width="650" height="350">
<head>
<title>修改审核单信息</title>
</head>

<script language="javascript">

// 保 存
function func_record_saveAndExit()
{
	saveAndExit( '', '保存审核单信息表' );	// /txn01A01011.do
}

// 返 回
function func_record_goBack()
{
	goBack();	// /txn01A01011.do
}

// 请在这里添加，页面加载完成后的用户初始化操作
function __userInitPage()
{
	
}

_browse.execute( __userInitPage );
</script>
<rocket:body>
<rocket:title caption="修改审核单信息"/>
<rocket:errors/>

<rocket:form action="/txn01A01012">
  <rocket:frame property="primary-key" width="95%">
      <rocket:hidden property="bill_id" caption="审核单编号" style="width:95%"/>
  </rocket:frame>

  <rocket:block property="record" caption="修改审核单信息" width="95%">
      <rocket:button name="record_saveAndExit" caption="保 存" hotkey="SAVE_CLOSE" onclick="func_record_saveAndExit();"/>
      <rocket:button name="record_goBack" caption="返 回" hotkey="CLOSE" onclick="func_record_goBack();"/>
      <rocket:hidden property="bill_id" caption="审核单编号" datatype="string" maxlength="24" style="width:95%"/>
      <rocket:text property="taxpayer_id" caption="纳税人编号" datatype="string" maxlength="32" minlength="1" style="width:95%"/>
      <rocket:textarea property="taxpayer_name" caption="纳税人名称" colspan="2" rows="4" maxlength="500" style="width:98%"/>
      <rocket:select property="imex_type" valueset="#i=进口;e=出口" caption="进出口类型" notnull="true" style="width:95%"/>
      <rocket:text property="declar_tot_num" caption="报关单总记录数" datatype="string" maxlength="10" minlength="1" style="width:95%"/>
      <rocket:text property="declar_tot_amt" caption="报关单总金额" datatype="string" maxlength="19" minlength="1" style="width:95%"/>
      <rocket:hidden property="create_date" caption="录入日期" datatype="string" maxlength="8" style="width:95%"/>
      <rocket:hidden property="create_time" caption="录入时间" datatype="string" maxlength="6" style="width:95%"/>
      <rocket:hidden property="create_user" caption="录入人" datatype="string" maxlength="100" style="width:95%"/>
      <rocket:text property="check_date" caption="审核日期" datatype="string" maxlength="8" style="width:95%"/>
      <rocket:text property="check_time" caption="审核时间" datatype="string" maxlength="6" style="width:95%"/>
      <rocket:text property="check_user" caption="审核人" datatype="string" maxlength="100" style="width:95%"/>
      <rocket:select property="bill_status" valueset="#1=录入;2=审核通过;3=审核不通过" caption="状态" notnull="true" style="width:95%"/>
      <rocket:text property="bk_number1" caption="备用编号1" datatype="string" maxlength="10" style="width:95%"/>
      <rocket:text property="bk_number2" caption="备用编号2" datatype="string" maxlength="10" style="width:95%"/>
      <rocket:text property="bk_value1" caption="备用数值1" datatype="string" maxlength="19" style="width:95%"/>
      <rocket:text property="bk_value2" caption="备用数值2" datatype="string" maxlength="19" style="width:95%"/>
      <rocket:text property="bk_type1" caption="备用类型1" datatype="string" maxlength="1" style="width:95%"/>
      <rocket:text property="bk_type2" caption="备用类型2" datatype="string" maxlength="1" style="width:95%"/>
      <rocket:text property="bk_flag1" caption="备用标志1" datatype="string" maxlength="10" style="width:95%"/>
      <rocket:text property="bk_flag2" caption="备用标志2" datatype="string" maxlength="10" style="width:95%"/>
      <rocket:text property="bk_date1" caption="备用日期1" datatype="string" maxlength="8" style="width:95%"/>
      <rocket:text property="bk_date2" caption="备用日期2" datatype="string" maxlength="8" style="width:95%"/>
      <rocket:text property="bk_time1" caption="备用时间1" datatype="string" maxlength="6" style="width:95%"/>
      <rocket:text property="bk_time2" caption="备用时间2" datatype="string" maxlength="6" style="width:95%"/>
      <rocket:text property="bk_s_str1" caption="备用串1" datatype="string" maxlength="24" style="width:95%"/>
      <rocket:text property="bk_s_str2" caption="备用串2" datatype="string" maxlength="24" style="width:95%"/>
      <rocket:text property="bk_l_str1" caption="备用长串1" datatype="string" maxlength="100" style="width:95%"/>
      <rocket:text property="bk_l_str2" caption="备用长串2" datatype="string" maxlength="100" style="width:95%"/>
      <rocket:textarea property="bk_xl_str1" caption="备用超长串1" colspan="2" rows="4" maxlength="300" style="width:98%"/>
      <rocket:textarea property="bk_xl_str2" caption="备用超长串2" colspan="2" rows="4" maxlength="300" style="width:98%"/>
      <rocket:textarea property="memo" caption="备注" colspan="2" rows="4" maxlength="500" style="width:98%"/>
      <rocket:text property="dac" caption="dac校验" datatype="string" maxlength="16" style="width:95%"/>
  </rocket:block>

</rocket:form>
</rocket:body>
</rocket:html>
