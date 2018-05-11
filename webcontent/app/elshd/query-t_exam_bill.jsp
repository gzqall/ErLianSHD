<%@ page contentType="text/html; charset=GBK" %>
<%@ taglib uri="/WEB-INF/rocket.tld" prefix="rocket" %>
<%-- template single/single-table-query.jsp --%>

<rocket:html width="650" height="350">
<head>
<title>查询审核单列表</title>
</head>

<script language="javascript">
// 增加审核单
function func_record_addRecord()
{
	var page = new pageDefine( "insert-t_exam_bill.jsp", "增加审核单", "dialog" );
	page.addRecord();
}

// 修改审核单
function func_record_updateRecord()
{
	var page = new pageDefine( "/txn01A01014.do", "修改审核单", "dialog" );
	page.addParameter( "record:bill_id", "primary-key:bill_id" );
	page.updateRecord();
}

// 删除审核单
function func_record_deleteRecord()
{
	var page = new pageDefine( "/txn01A01015.do", "删除审核单" );
	page.addParameter( "record:bill_id", "primary-key:bill_id" );
	page.deleteRecord( "是否删除选中的记录" );
}

// 打印列表
function func_record_printPage()
{
	var page = new pageDefine( "/txn01A01011.do", "打印列表", "printWindow" );
	page.printPage( 2 );
}

// 查看内容
function func_record_viewRecord()
{
	var page = new pageDefine( "/txn01A01016.do", "查看内容", "dialog" );
	page.addParameter( "record:bill_id", "primary-key:bill_id" );
	page.viewRecord();
}

function setTxnPayerName() {
   var name = getFormFieldValue("select-key:taxpayer_name_hidden",0);
   setFormFieldValue( "select-key:taxpayer_name", 0, name );
}

// 请在这里添加，页面加载完成后的用户初始化操作
function __userInitPage()
{
	
}

_browse.execute( __userInitPage );
</script>

<rocket:body>
<rocket:title caption="查询审核单列表"/>
<rocket:errors/>

<rocket:form action="/txn01A01011">

	<rocket:block property="select-key" caption="查询条件" theme="query" width="95%">
		<rocket:text property="bill_id" caption="审核单编号" maxlength="24" datatype="string" style="width:95%"/>
		<rocket:browsebox property="taxpayer_id" caption="纳税人编号" multiple="false" valueset="queryTaxPayer" show="mix" namebox="taxpayer_name_hidden" style="width:95%" onchange="setTxnPayerName()"/>
		<rocket:text property="taxpayer_name" caption="纳税人名称" maxlength="500" datatype="string" style="width:95%"/>
		<rocket:select property="imex_type" caption="进出口类型" valueset="#i=进口;e=出口" style="width:95%"/>
		<rocket:text property="declar_tot_num" caption="报关单总记录数" maxlength="10" datatype="string" style="width:95%"/>
		<rocket:text property="declar_tot_amt" caption="报关单总金额" maxlength="19" datatype="string" style="width:95%"/>
		<rocket:column caption="录入日期" style="width:98%">

			<table cellpadding="0" cellspacing="0" border="0" width="97%">
				<tr>
					<td width="50%">
						<rocket:datebox property="b_date" caption="开始日期" style="width:100%"/>
					</td>
					<td width="3%">&nbsp至</td>
					<td width="50%">
						<rocket:datebox property="e_date" caption="截至日期" style="width:100%"/>
					</td>
				</tr>
			</table>
		</rocket:column>

		<rocket:browsebox property="create_user" caption="录入人" multiple="false" valueset="用户列表" show="code" style="width:95%"/>
	</rocket:block>

	<rocket:grid property="record" caption="查询审核单列表" keylist="bill_id" nowrap="true" theme="gray" fixrow="true" navbar="bottom" width="95%" menutheme="icon">
		<rocket:button name="record_addRecord" caption="增加审核单" hotkey="ADD" enablerule="0" txncode="01A01013" icon="/script/button-icon/icon_add.gif" align="right" onclick="func_record_addRecord();"/>
		<rocket:button name="record_updateRecord" caption="修改审核单" enablerule="1" txncode="01A01014" icon="/script/button-icon/icon_update.gif" visible="false" align="right" onclick="func_record_updateRecord();"/>
		<rocket:button name="record_deleteRecord" caption="删除审核单" enablerule="2" txncode="01A01015" icon="/script/button-icon/icon_delete.gif" visible="false" align="right" onclick="func_record_deleteRecord();"/>
		<rocket:button name="record_printPage" caption="打印列表" hotkey="PRINT" enablerule="0" txncode="01A01011" icon="/script/button-icon/icon_print.gif" visible="false" align="right" onclick="func_record_printPage();"/>
		<rocket:button name="record_viewRecord" caption="查看内容" hotkey="VIEW" enablerule="1" txncode="01A01016" icon="/script/button-icon/icon_view.gif" align="right" onclick="func_record_viewRecord();"/>
		<rocket:cell property="bill_id" caption="审核单编号" style="width:12%"/>
		<rocket:cell property="taxpayer_id" caption="纳税人编号" style="width:12%"/>
		<rocket:cell property="taxpayer_name" caption="纳税人名称" style="width:20%" visible="false"/>
		<rocket:cell property="imex_type" caption="进出口类型" valueset="#i=进口;e=出口" style="width:12%"/>
		<rocket:cell property="declar_tot_num" caption="报关单总记录数" style="width:10%"/>
		<rocket:cell property="declar_tot_amt" caption="报关单总金额" style="width:12%"/>
		<rocket:cell property="create_date" caption="录入日期" style="width:10%" visible="false"/>
		<rocket:cell property="create_time" caption="录入时间" style="width:10%" visible="false"/>
		<rocket:cell property="create_user" caption="录入人" style="width:10%" visible="false"/>
		<rocket:hidden property="check_date" caption="审核日期" style="width:10%"/>
		<rocket:hidden property="check_time" caption="审核时间" style="width:10%"/>
		<rocket:cell property="check_user" caption="审核人" style="width:20%"/>
		<rocket:cell property="bill_status" caption="状态" valueset="#1=录入;2=审核通过;3=审核不通过" style="width:12%"/>
		<rocket:hidden property="bk_number1" caption="备用编号1" style="width:10%"/>
		<rocket:hidden property="bk_number2" caption="备用编号2" style="width:10%"/>
		<rocket:hidden property="bk_value1" caption="备用数值1" style="width:12%"/>
		<rocket:hidden property="bk_value2" caption="备用数值2" style="width:12%"/>
		<rocket:hidden property="bk_type1" caption="备用类型1" style="width:10%"/>
		<rocket:hidden property="bk_type2" caption="备用类型2" style="width:10%"/>
		<rocket:hidden property="bk_flag1" caption="备用标志1" style="width:10%"/>
		<rocket:hidden property="bk_flag2" caption="备用标志2" style="width:10%"/>
		<rocket:hidden property="bk_date1" caption="备用日期1" style="width:10%"/>
		<rocket:hidden property="bk_date2" caption="备用日期2" style="width:10%"/>
		<rocket:hidden property="bk_time1" caption="备用时间1" style="width:10%"/>
		<rocket:hidden property="bk_time2" caption="备用时间2" style="width:10%"/>
		<rocket:hidden property="bk_s_str1" caption="备用串1" style="width:12%"/>
		<rocket:hidden property="bk_s_str2" caption="备用串2" style="width:12%"/>
		<rocket:hidden property="bk_l_str1" caption="备用长串1" style="width:20%"/>
		<rocket:hidden property="bk_l_str2" caption="备用长串2" style="width:20%"/>
		<rocket:hidden property="bk_xl_str1" caption="备用超长串1" style="width:20%"/>
		<rocket:hidden property="bk_xl_str2" caption="备用超长串2" style="width:20%"/>
		<rocket:cell property="memo" caption="备注" style="width:20%" visible="true"/>
		<rocket:hidden property="dac" caption="dac校验" style="width:12%"/>
	</rocket:grid>
</rocket:form>
</rocket:body>
</rocket:html>


