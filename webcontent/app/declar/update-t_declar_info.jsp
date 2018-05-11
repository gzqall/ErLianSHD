<%@ page contentType="text/html; charset=GBK" %>
<%@ taglib uri="/WEB-INF/rocket.tld" prefix="rocket" %>
<%-- template single/single-table-update.jsp --%>
<rocket:html width="650" height="350">
<head>
<title>修改报关单信息</title>
</head>

<script language="javascript">

// 保 存
function func_record_saveAndExit()
{
	saveAndExit( '', '保存报关单信息表' );	// /txn01B01011.do
}

// 返 回
function func_record_goBack()
{
	goBack();	// /txn01B01011.do
}

// 请在这里添加，页面加载完成后的用户初始化操作
function __userInitPage()
{
	
}

_browse.execute( __userInitPage );
</script>
<rocket:body>
<rocket:title caption="修改报关单信息"/>
<rocket:errors/>

<rocket:form action="/txn01B01012">
  <rocket:frame property="primary-key" width="95%">
      <rocket:hidden property="bill_id" caption="审核单号" style="width:95%"/>
      <rocket:hidden property="index_no" caption="索引号" style="width:95%"/>
  </rocket:frame>

  <rocket:block property="record" caption="修改报关单信息" width="95%">
      <rocket:button name="record_saveAndExit" caption="保 存" hotkey="SAVE_CLOSE" onclick="func_record_saveAndExit();"/>
      <rocket:button name="record_goBack" caption="返 回" hotkey="CLOSE" onclick="func_record_goBack();"/>
      <rocket:hidden property="bill_id" caption="审核单号" datatype="string" maxlength="24" style="width:95%"/>
      <rocket:hidden property="index_no" caption="索引号" datatype="string" maxlength="10" style="width:95%"/>
      <rocket:text property="declar_no" caption="报关单号" datatype="string" maxlength="24" minlength="1" style="width:95%"/>
      <rocket:text property="declar_amt" caption="报关单金额" datatype="string" maxlength="19" style="width:95%"/>
      <rocket:text property="declar_date" caption="报关单日期" datatype="string" maxlength="8" style="width:95%"/>
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
      <rocket:text property="memo" caption="备注" datatype="string" maxlength="255" colspan="2" style="width:98%"/>
      <rocket:text property="dac" caption="dac校验" datatype="string" maxlength="16" style="width:95%"/>
  </rocket:block>

</rocket:form>
</rocket:body>
</rocket:html>
