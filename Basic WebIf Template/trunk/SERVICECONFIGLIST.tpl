<!--OSCam;3730035954;1.20-unstable_svn;9063;-->
##TPLHEADER##
##TPLMENU##
##TPLMESSAGE##
	<FORM action="services_edit.html" method="get"><INPUT TYPE="hidden" NAME="action" VALUE="add">
		<TABLE CLASS="stats">
			<TR>
				<TH>Label</TH>
				<TH colspan="3" class="centered">Action</TH>
			</TR>
##SERVICETABS##
			<TR>
				<TD>New Service:</TD>
				<TD><input name="service" type="text"></TD>
				<TD colspan="2" class="centered"><input type="submit" value="Add" ##BTNDISABLED##></TD>
			</TR>
		</TABLE>
	</FORM>
##TPLFOOTER##
