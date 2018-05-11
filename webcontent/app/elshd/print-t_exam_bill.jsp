<%@ page contentType="text/html; charset=GBK" %>
<%@ taglib uri="/WEB-INF/rocket.tld" prefix="rocket" %>
<%-- template single/single-table-print.jsp --%>
<rocket:html width="750" height="400">
<head>
<title>打印审核单信息</title>
</head>

<script language="javascript">

// 打 印
function func_record_printDocument()
{
	print(document);
}

// 返 回
function func_record_goBackNoUpdate()
{
	goBackNoUpdate();	// /txn01A01011.do
}

// 请在这里添加，页面加载完成后的用户初始化操作
function __userInitPage()
{
	
}

_browse.execute( __userInitPage );
</script>
<rocket:body styleClass='body-div'>
<rocket:title caption="打印审核单信息"/>
<rocket:errors/>

<!-- 用户自定义的函数 -->
<script language="javascript">
function prepareHead( totalRow, pageRow, totalPage, currentPage )
{
	document.write( '<table border="0" width="100%"><tr><td>打印测试程序的 [headscript] 属性</td>' );
	document.write( '<td>　</td>' );
	document.write( '<td align="right">第 ' + currentPage + ' 页，总共 ' + totalPage + ' 页</td></tr></table>' );
}

function prepareTail( totalRow, pageRow, totalPage, currentPage )
{
	document.write( '<table border="0" width="100%"><tr><td>打印测试程序的 [tailscript] 属性</td>' );
	document.write( '<td>　</td>' );
	document.write( '<td align="right">第 ' + currentPage + ' 页，总共 ' + totalPage + ' 页</td></tr></table>' );
}
</script>

<rocket:form action="/txn01A01011">
  <p align="center">
  <rocket:print property="record" fixrow="true" pageRows="36" caption="<font size='5'><b>打印测试程序的[caption]属性</b></font>" note="这是一个打印测试表的 [note] 属性" headscript="prepareHead" tailscript="prepareTail" align="center" width="95%">
      <rocket:cell property="bill_id" caption="审核单编号" style="width:12%" />
      <rocket:cell property="taxpayer_id" caption="纳税人编号" style="width:12%" />
      <rocket:cell property="taxpayer_name" caption="纳税人名称" style="width:20%" visible="false" />
      <rocket:cell property="imex_type" caption="进出口类型" valueset="#i=进口;e=出口" style="width:12%" />
      <rocket:cell property="declar_tot_num" caption="报关单总记录数" style="width:10%" />
      <rocket:cell property="declar_tot_amt" caption="报关单总金额" style="width:12%" />
      <rocket:cell property="create_date" caption="录入日期" style="width:10%" visible="false"/>
      <rocket:cell property="create_time" caption="录入时间" style="width:10%" visible="false"/>
      <rocket:cell property="create_user" caption="录入人" style="width:10%" visible="false"/>
      <rocket:cell property="check_date" caption="审核日期" style="width:10%" />
      <rocket:cell property="check_time" caption="审核时间" style="width:10%" />
      <rocket:cell property="check_user" caption="审核人" style="width:20%" />
      <rocket:cell property="bill_status" caption="状态" valueset="#1=录入;2=审核通过;3=审核不通过" style="width:12%" />
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
      <rocket:cell property="memo" caption="备注" style="width:20%" visible="false" />
      <rocket:cell property="dac" caption="dac校验" style="width:12%" />
  </rocket:print></p>
  <p align="center" class="print-hide">
  <input type="button" name="record_printDocument" value="打 印" class="menu" onclick="func_record_printDocument();" style='width:60px' >
  <input type="button" name="record_goBackNoUpdate" value="返 回" class="menu" onclick="func_record_goBackNoUpdate();" style='width:60px' >
  </p>
  <p align="center" class="print-hide">&nbsp;</p>
  
</rocket:form>
</rocket:body>
</rocket:html>
