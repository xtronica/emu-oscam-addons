<!--OSCam;920286161;1.20-unstable_svn;9365;-->
##TPLHEADER##
##TPLMENU##
##TPLCONFIGMENU##
##TPLMESSAGE##
	<form action="config.html" method="get">
		<input name="part" type="hidden" value="gbox">
		<input name="action" type="hidden" value="execute">
		<TABLE CLASS="config">
			<TR><TH COLSPAN="2">Edit Gbox Config </TH></TR>
			<TR><TD>Password:</TD><TD><input name="password" type="text" size="10" maxlength="8" value="##PASSWORD##"></TD></TR>
			<TR><TD>Maxdist:</TD><TD><input name="maxdist" type="text" size="5" maxlength="2" value="##MAXDIST##"></TD></TR>
			<TR><TD>Ignorelist:</TD><TD><input name="ignorelist" type="text" size="50" maxlength="50" value="##IGNORELIST##"></TD></TR>
			<TR><TD>Onlineinfos:</TD><TD><input name="onlineinfos" type="text" size="50" maxlength="50" value="##ONLINEINFOS##"></TD></TR>
			<TR><TD>Cardinfos:</TD><TD><input name="cardinfos" type="text" size="50" maxlength="50" value="##CARDINFOS##"></TD></TR>
			<TR><TD>Locals:</TD><TD><input name="locals" type="text" size="50" maxlength="50" value="##LOCALS##"></TD></TR>
			<TR><TD COLSPAN="2" ALIGN="right"><input type="submit" value="OK" ##BTNDISABLED##></TD></TR>
		</TABLE>
	</form>
##TPLFOOTER##
