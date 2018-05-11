<%@ page contentType="text/html; charset=gb2312" %>
<%@ taglib uri="/WEB-INF/rocket.tld" prefix="rocket" %>
<rocket:html script="/script/struts-coolmenus3.js">
<head>
<title>tagtest</title>
</head>

<body bgcolor="#ffffff">
<rocket:title caption="tagtest"/>
<rocket:errors/>
<table style='width:400;height:200;' bgcolor='blue' oncontextmenu="oCMenu.popupMenu('ToDoListMenuFile'); return false;">
<tr><td>&nbsp;
</td></tr>
</table>

<script language="javascript">
function func_input_data_saveRecord(){
  saveRecord( "", "tagtest" );
}

</script>
<rocket:toolmenu name="oCMenu" aspect="menu" top="200" left="200" width="10">
	<rocket:toolitem id="ToDoListMenuFile" caption="File" width="64">
		<rocket:toolitem id="TDLnew" caption="New">
			<rocket:toolitem id="TDLnewcase" caption="Case" link="NewCase.jsp"/>
			<rocket:toolitem id="TDLnewitem" caption="Item" link="index.jsp" image="/script/menu-images/Darrow.gif" imageon="/script/menu-images/Rarrow.gif"/>
			<rocket:toolitem id="TDLnewparty" caption="Party" link="index.jsp"/>
		</rocket:toolitem>
		<rocket:toolitem id="TDLopen" caption="Open">
			<rocket:toolitem id="TDLopencase" caption="Case" link="index.jsp"/>
			<rocket:toolitem id="TDLopencase1" caption="Item" link="index.jsp"/>
			<rocket:toolitem id="TDLopencase2" caption="Party" link="index.jsp"/>
		</rocket:toolitem>
		<rocket:toolitem id="TDLexit" caption="Exit" link="index.jsp"/>
	</rocket:toolitem>
	
	<rocket:toolitem id=" ToDoListMenuEdit" caption="Edit">
		<rocket:toolitem id="TDLselect" caption="Select All" link="index.jsp"/>
		<rocket:toolitem id="TDLprefs" caption="User Preferences" link="index.jsp"/>
	</rocket:toolitem>
	
	<rocket:toolitem id=" CaseDetailMenuCase" caption="Case">
		<rocket:toolitem id="CDadd" caption="Add">
			<rocket:toolitem id="CDaddparty" caption="Party"/>
			<rocket:toolitem id="CDadditem" caption="Item"/>
			<rocket:toolitem id="CDaddcomments" caption="Comments"/>
			<rocket:toolitem id="CDadddoc" caption="Documents"/>
			<rocket:toolitem id="CDaddposition" caption="Position"/>
		</rocket:toolitem>
		<rocket:toolitem id="CDopen" caption="Open">
			<rocket:toolitem id="CDopenparty" caption="Party"/>
			<rocket:toolitem id="CDopenitem" caption="Item"/>
			<rocket:toolitem id="CDopencomments" caption="Comments"/>
			<rocket:toolitem id="CDopendoc" caption="Documents"/>
			<rocket:toolitem id="CDopenposition" caption="Position"/>
			<rocket:toolitem id="CDopenhistory" caption="History"/>
		</rocket:toolitem>
		<rocket:toolitem id="CDassign" caption="Assign"/>
		<rocket:toolitem id="CDactivate" caption="Activate"/>
		<rocket:toolitem id="CDpublish" caption="Publish"/>
		<rocket:toolitem id="CDescalate" caption="Escalate"/>
		<rocket:toolitem id="CDdecide" caption="Decide"/>
		<rocket:toolitem id="CDgenlicen" caption="Generate License"/>
	</rocket:toolitem>
	<rocket:toolitem id="TDLopencase5" caption="Case1" link="index.jsp"/>
</rocket:toolmenu>


</body>
</rocket:html>
