<!--OSCam;732860475;1.20-unstable_svn;9665;-->
##TPLHEADER##
##TPLMENU##
<DIV ID="subnav"><UL ID="nav"><LI CLASS="configmenu"><A HREF="javascript:history.go(-1)">Back</A></LI></UL></DIV>
##TPLMESSAGE##
	<form action="services_edit.html" method="get">
		<input name="service" type="hidden" value="##LABEL##">
		<TABLE CLASS="stats">
			<TR><TH COLSPAN="2">Edit Service ##LABEL##</TH></TR>
			<TR><TD>##TPLHELPPREFIX##services#caid##TPLHELPSUFFIX##Caid: </A></TD><TD><input name="caid" type="text" size="63" maxlength="160" value="##CAIDS##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##services#provid##TPLHELPSUFFIX##Provid: </A></TD><TD><input name="provid" type="text" size="63" maxlength="60" value="##PROVIDS##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##services#srvid##TPLHELPSUFFIX##Srvid: </A></TD><TD><textarea name="srvid" ROWS="10" COLS="69">##SRVIDS##</textarea></TD></TR>
			<TR><TD>&nbsp;</TD><TD ALIGN="right"><input type="submit" name="action" value="Save" title="Save service and reload services" ##BTNDISABLED##></TD>
		</TABLE>
	</form>
##TPLFOOTER##
