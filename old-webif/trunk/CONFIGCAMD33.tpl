<!--OSCam;1939262936;1.20-unstable_svn;9365;MODULE_CAMD33-->
##TPLHEADER##
##TPLMENU##
##TPLCONFIGMENU##
##TPLMESSAGE##
	<form action="config.html" method="get">
		<input name="part" type="hidden" value="camd33">
		<input name="action" type="hidden" value="execute">
		<TABLE CLASS="config">
			<TR><TH COLSPAN="2">Edit Camd33 Config</TH></TR>
			<TR><TD>##TPLHELPPREFIX##conf#port_3##TPLHELPSUFFIX##Port:</A></TD><TD><input name="port" type="text" size="5" maxlength="5" value="##PORT##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#serverip_3##TPLHELPSUFFIX##Serverip:</A></TD><TD><input name="serverip" type="text" size="15" maxlength="15" value="##SERVERIP##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#key##TPLHELPSUFFIX##Key:</A></TD><TD><input name="key" type="text" size="32" maxlength="32" value="##KEY##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#passive##TPLHELPSUFFIX##Passive:</A></TD><TD><input name="passive" value="0" type="hidden"><input name="passive" value="1" type="checkbox" ##PASSIVECHECKED##></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#nocrypt_2##TPLHELPSUFFIX##Nocrypt:</A></TD><TD><input name="nocrypt" type="text" size="63" maxlength="200" value="##NOCRYPT##"></TD></TR>
			<TR><TD COLSPAN="2" ALIGN="right"><input type="submit" value="Save" title="Save settings" ##BTNDISABLED##></TD></TR>
		</TABLE>
	</form>
##TPLFOOTER##
