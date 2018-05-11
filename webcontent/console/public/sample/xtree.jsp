<%@ page contentType="text/html; charset=GBK" %>
<%@ taglib uri="/WEB-INF/rocket.tld" prefix="rocket" %>

<rocket:html title="页面公共函数和变量">
<rocket:include href="/script/mars-xtree.js"/>
<rocket:include href="/script/struts-coolmenus3.js"/>

<script language='javascript'>
function funcClick( )
{
	var node = test.selectedNode;
	addMessage( "click ==> " + node.text + "\n" );
}

function dblClick( )
{
	var node = test.selectedNode;
	addMessage( "dblclick ==> " + node.text + "\n" );
}
</script>

<rocket:body>
	<rocket:title caption="页面公共函数和变量"/>
  	
	<table border="0"><tr><td>
	<input type="button" value="test" onclick='ttest()'>
	<input type="button" value="popup" onclick='popup()'>
	<rocket:xtree name='test' property='/WEB-INF/mars-menu.xml' root="测试程序" width="260px" height="200px" border="1" bordercolor="3366FF" bgcolor="EEEEEE" color="000000" aspect="menu" nodeicon="scrollend.gif" textname="{name}" onclick="funcClick" ondblclick="dblClick"/>
	</td><td>
	
<textarea id="test" rows="30" cols="70"></textarea>
</td></tr></table>

<script language="javascript">
function addMessage( str )
{
	var	obj = document.getElementById('test');
	if( obj == null ){
		return;
	}
	
	obj.value = obj.value + ' ' + str;
}

function setMessage( str )
{
	document.getElementById('test').value = str;
}

function ttest()
{
	setMessage( document.body.outerHTML );
}

function popup()
{
	test.createPopupMenu();
	test.popupMenu( "hello", "xtree" );
}

function hello()
{
	alert( 'click' );
}
</script>


</rocket:body>
</rocket:html>