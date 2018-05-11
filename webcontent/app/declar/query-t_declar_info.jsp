<%@ page contentType="text/html; charset=GBK" %>
<%@ taglib uri="/WEB-INF/rocket.tld" prefix="rocket" %>
<%-- template single/single-table-query.jsp --%>
<rocket:html width="650" height="350">
<head>
<title>查询报关单列表</title>
</head>

<script language="javascript">

// 增加报关单
function func_record_addRecord()
{
	var page = new pageDefine( "insert-t_declar_info.jsp", "增加报关单", "dialog" );
	page.addRecord();
}

// 修改报关单
function func_record_updateRecord()
{
	var page = new pageDefine( "/txn01B01014.do", "修改报关单", "dialog" );
	page.addParameter( "record:bill_id", "primary-key:bill_id" );
	page.addParameter( "record:index_no", "primary-key:index_no" );
	page.updateRecord();
}

// 删除报关单
function func_record_deleteRecord()
{
	var page = new pageDefine( "/txn01B01015.do", "删除报关单" );
	page.addParameter( "record:bill_id", "primary-key:bill_id" );
	page.addParameter( "record:index_no", "primary-key:index_no" );
	page.deleteRecord( "是否删除选中的记录" );
}

// 打印列表
function func_record_printPage()
{
	var page = new pageDefine( "/txn01B01011.do", "打印列表", "printWindow" );
	page.printPage( 2 );
}

// 查看内容
function func_record_viewRecord()
{
	var page = new pageDefine( "/txn01B01016.do", "查看内容", "dialog" );
	page.addParameter( "record:bill_id", "primary-key:bill_id" );
	page.addParameter( "record:index_no", "primary-key:index_no" );
	page.viewRecord();
}

// 请在这里添加，页面加载完成后的用户初始化操作
function __userInitPage()
{
	
}

_browse.execute( __userInitPage );
</script>
<rocket:body>
<rocket:title caption="查询报关单列表"/>
<rocket:errors/>

<rocket:form action="/txn01B01011">
  <rocket:block theme="query" property="select-key" caption="查询条件" width="95%">
      <rocket:text property="bill_id" caption="审核单号" datatype="string" maxlength="24" style="width:95%"/>
      <rocket:text property="index_no" caption="索引号" datatype="string" maxlength="10" style="width:95%"/>
      <rocket:text property="declar_no" caption="报关单号" datatype="string" maxlength="24" style="width:95%"/>
      <rocket:text property="declar_amt" caption="报关单金额" datatype="string" maxlength="19" style="width:95%"/>
      <rocket:text property="declar_date" caption="报关单日期" datatype="string" maxlength="8" style="width:95%"/>
  </rocket:block>

  <rocket:grid property="record" caption="查询报关单列表" theme="gray" nowrap="true" menutheme="icon" keylist="bill_id,index_no" width="95%" navbar="bottom" fixrow="true">
      <rocket:button name="record_addRecord" caption="增加报关单" txncode="01B01013" enablerule="0" hotkey="ADD" icon="/script/button-icon/icon_add.gif" align="right" onclick="func_record_addRecord();"/>
      <rocket:button name="record_updateRecord" caption="修改报关单" txncode="01B01014" enablerule="1" hotkey="UPDATE" icon="/script/button-icon/icon_update.gif" align="right" onclick="func_record_updateRecord();"/>
      <rocket:button name="record_deleteRecord" caption="删除报关单" txncode="01B01015" enablerule="2" hotkey="DELETE" icon="/script/button-icon/icon_delete.gif" align="right" onclick="func_record_deleteRecord();"/>
      <rocket:button name="record_printPage" caption="打印列表" txncode="01B01011" enablerule="0" hotkey="PRINT" icon="/script/button-icon/icon_print.gif" align="right" onclick="func_record_printPage();"/>
      <rocket:button name="record_viewRecord" caption="查看内容" txncode="01B01016" enablerule="1" hotkey="VIEW" icon="/script/button-icon/icon_view.gif" align="right" onclick="func_record_viewRecord();"/>
      <rocket:cell property="bill_id" caption="审核单号" style="width:12%" />
      <rocket:cell property="index_no" caption="索引号" style="width:10%" />
      <rocket:cell property="declar_no" caption="报关单号" style="width:12%" />
      <rocket:cell property="declar_amt" caption="报关单金额" style="width:12%" />
      <rocket:cell property="declar_date" caption="报关单日期" style="width:10%" />
      <rocket:cell property="bk_number1" caption="备用编号1" style="width:10%" />
      <rocket:cell property="bk_number2" caption="备用编号2" style="width:10%" />
      <rocket:cell property="bk_value1" caption="备用数值1" style="width:12%" />
      <rocket:cell property="bk_value2" caption="备用数值2" style="width:12%" />
      <rocket:cell property="bk_type1" caption="备用类型1" style="width:10%" />
      <rocket:cell property="bk_type2" caption="备用类型2" style="width:10%" />
      <rocket:cell property="bk_flag1" caption="备用标志1" style="width:10%" />
      <rocket:cell property="bk_flag2" caption="备用标志2" style="width:10%" />
      <rocket:cell property="bk_date1" caption="备用日期1" style="width:10%" />
      <rocket:cell property="bk_date2" caption="备用日期2" style="width:10%" />
      <rocket:cell property="bk_time1" caption="备用时间1" style="width:10%" />
      <rocket:cell property="bk_time2" caption="备用时间2" style="width:10%" />
      <rocket:cell property="bk_s_str1" caption="备用串1" style="width:12%" />
      <rocket:cell property="bk_s_str2" caption="备用串2" style="width:12%" />
      <rocket:cell property="bk_l_str1" caption="备用长串1" style="width:20%" />
      <rocket:cell property="bk_l_str2" caption="备用长串2" style="width:20%" />
      <rocket:cell property="bk_xl_str1" caption="备用超长串1" style="width:20%" visible="false" />
      <rocket:cell property="bk_xl_str2" caption="备用超长串2" style="width:20%" visible="false" />
      <rocket:cell property="memo" caption="备注" style="width:20%" />
      <rocket:cell property="dac" caption="dac校验" style="width:12%" />
  </rocket:grid>

</rocket:form>
</rocket:body>
</rocket:html>
