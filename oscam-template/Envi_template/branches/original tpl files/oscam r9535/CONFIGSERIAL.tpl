<!--OSCam;2684894135;1.20-unstable_svn;9535;MODULE_SERIAL-->
##TPLHEADER##
##TPLMENU##
##TPLCONFIGMENU##
##TPLMESSAGE##
	<form action="config.html" method="get">
		<input name="part" type="hidden" value="serial">
		<input name="action" type="hidden" value="execute">
		<TABLE CLASS="config">
			<TR><TH COLSPAN="2">Edit Serial Config</TH></TR>
##DEVICES##
			<TR><TD COLSPAN="2"><input type="submit" value="Save" title="Save settings" ##BTNDISABLED##></TD></TR>
		</TABLE>
	</form>
##TPLFOOTER##