<!--OSCam;3321163592;1.20-unstable_svn;9063;-->
##TPLHEADER##
##TPLMENU##
##TPLMESSAGE##
	<TABLE CLASS="configmenu"><TR><TD CLASS="configmenu"><A HREF="scanusb.html">Scan USB</A></TD><TD CLASS="configmenu"><A TARGET="_blank" HREF="graph.svg?type=servers">Show Graphs</A></TD></TR></TABLE>
	<form action="readerconfig.html" method="get">
		<TABLE CLASS="readers">
			<TR>
				<TH>Enabled</TH>
				<TH>Reader</TH>
				<TH>Protocol</TH>
				<TH>EMM error<br><span title="unknown EMM"> UK </span>/<span title="global EMM"> G </span>/<span title="shared EMM"> S </span>/<span title="unique EMM"> UQ </span></TH>
				<TH>EMM written<br><span title="unknown EMM"> UK </span>/<span title="global EMM"> G </span>/<span title="shared EMM"> S </span>/<span title="unique EMM"> UQ </span></TH>
				<TH>EMM skipped<br><span title="unknown EMM"> UK </span>/<span title="global EMM"> G </span>/<span title="shared EMM"> S </span>/<span title="unique EMM"> UQ </span></TH>
				<TH>EMM blocked<br><span title="unknown EMM"> UK </span>/<span title="global EMM"> G </span>/<span title="shared EMM"> S </span>/<span title="unique EMM"> UQ </span></TH>
				<TH>ECMs OK</TH>
				<TH>ECMs NOK</TH>
				<TH>ECMs Filtered<br><span title="filtered by ECM Header Whitelist"> Head </span>/<span title="filtered by ECM Whitelist"> Len </span></TH>
				<TH>LB Weight</TH>
				<TH COLSPAN="6">Action</TH>
			</TR>
##READERLIST##
			<TR>
				<TD>&nbsp;</TD>				<TD COLSPAN="2" class="centered">New Reader</TD>
				<TD COLSPAN="2" class="centered">Label:&nbsp;&nbsp;<input type="text" name="label" value="##NEXTREADER##"></TD>
				<TD COLSPAN="2" class="centered">Protocol:&nbsp;&nbsp;
					<select name="protocol">
##ADDPROTOCOL##
					</select>
				</TD>
				<TD COLSPAN="4" class="centered"><input type="submit" name="action" value="Add" ##BTNDISABLED##></TD>
				<TD COLSPAN="6"></TD>
			</TR>
		</TABLE>
	</form>
##TPLFOOTER##
