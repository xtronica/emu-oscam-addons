<!--OSCam;3896548710;1.20-unstable_svn;9365;MODULE_RADEGAST-->
##TPLHEADER##
##TPLMENU##
##TPLCONFIGMENU##
##TPLMESSAGE##
	<form action="config.html" method="get">
		<input name="part" type="hidden" value="radegast">
		<input name="action" type="hidden" value="execute">
		<TABLE CLASS="config">
			<TR><TH COLSPAN="2">Edit Radegast Config</TH></TR>
			<TR><TD>##TPLHELPPREFIX##conf#port_7##TPLHELPSUFFIX##Port:</A></TD><TD><input name="port" type="text" size="5" maxlength="5" value="##PORT##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#serverip_7##TPLHELPSUFFIX##Serverip:</A></TD><TD><input name="serverip" type="text" size="30" maxlength="30" value="##SERVERIP##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#allowed_2##TPLHELPSUFFIX##Allowed:</A></TD><TD><input name="allowed" type="text" size="63" maxlength="200" value="##ALLOWED##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#user##TPLHELPSUFFIX##User:</A></TD><TD><input name="user" type="text" size="30" maxlength="30" value="##USERNAME##"></TD></TR>
			<TR><TD COLSPAN="2" ALIGN="right"><input type="submit" value="Save" title="Save settings" ##BTNDISABLED##></TD></TR>
		</TABLE>
	</form>
##TPLFOOTER##
