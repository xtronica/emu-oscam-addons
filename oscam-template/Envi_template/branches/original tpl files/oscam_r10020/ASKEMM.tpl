<!--OSCam;2490393416;1.20-unstable_svn;10020;-->
##TPLHEADER##
##TPLMENU##
##TPLMESSAGE##
	<DIV ID="subnav">
		<UL ID="nav"></UL>
	</DIV>
	<form action="emm_running.html" method="get"><input type="hidden" name="label" value="##READER##">
		<TABLE CLASS="writeemm">
			<TR><TH COLSPAN="2">Selected reader : ##READER##</TH></TR>
			<TR><TD>CAID:</TD><TD><input name="emmcaid" class="short" type="text" maxlength="4" value="##CAID##" ##READONLY##></TD></TR>
			<TR><TD>Single EMM to write:</TD><TD><textarea name="ep" class="bt" rows="11" maxlength="1024"></textarea></TD></TR>
			<TR><TD>File path with EMMs:</TD><TD><input name="emmfile" type="text" maxlength="256"></TD></TR>
			<TR><TD COLSPAN="2" CLASS="centered"><input name="action" type="submit" value="Launch" title="Write EMM to this Reader" ##BTNDISABLED##></TD></TR>
			<TR CLASS="configfirstrow"><TD></TD><TD></TD></TR>
		</TABLE>
	</form>
##TPLFOOTER##