<!--OSCam;3782976633;1.20-unstable_svn;9340;-->
##TPLHEADER##
##TPLMENU##
##TPLMESSAGE##
<DIV ID="subnav">
	<UL ID="nav" CLASS="configmenu">
		<LI CLASS="configmenu"><A HREF="scanusb.html">Scan USB</A></LI>
		<LI CLASS="configmenu"><A TARGET="_blank" HREF="graph.svg?type=servers">Show Graphs</A></LI>
	</UL>
</DIV>
	<form action="readerconfig.html" method="get">
		<TABLE CLASS="readers">
			<TR>
				<TH COLSPAN="4"></TH>
				<TH COLSPAN="4">EMM</TH>
				<TH COLSPAN="3">ECM</TH>
				<TH COLSPAN="7"></TH>
			</TR>
			<TR>
				<TH>On/Off</TH>
				<TH>Reader</TH>
				<TH>Protocol</TH>
				<TH>Groups</TH>
				<TH>error<BR><SPAN TITLE="unknown EMM"> UK </SPAN>/<SPAN TITLE="global EMM"> G </SPAN>/<SPAN TITLE="shared EMM"> S </SPAN>/<SPAN TITLE="unique EMM"> UQ </SPAN></TH>
				<TH>written<BR><SPAN TITLE="unknown EMM"> UK </SPAN>/<SPAN TITLE="global EMM"> G </SPAN>/<SPAN TITLE="shared EMM"> S </SPAN>/<SPAN TITLE="unique EMM"> UQ </SPAN></TH>
				<TH>skipped<BR><SPAN TITLE="unknown EMM"> UK </SPAN>/<SPAN TITLE="global EMM"> G </SPAN>/<SPAN TITLE="shared EMM"> S </SPAN>/<SPAN TITLE="unique EMM"> UQ </SPAN></TH>
				<TH>blocked<BR><SPAN TITLE="unknown EMM"> UK </SPAN>/<SPAN TITLE="global EMM"> G </SPAN>/<SPAN TITLE="shared EMM"> S </SPAN>/<SPAN TITLE="unique EMM"> UQ </SPAN></TH>
				<TH>OK</TH>
				<TH>NOK</TH>
				<TH>Filtered<BR><SPAN TITLE="filtered by ECM Header Whitelist"> Head </SPAN>/<SPAN TITLE="filtered by ECM Whitelist"> Len </SPAN></TH>
				<TH>LB Weight</TH>
				<TH COLSPAN="6">Action</TH>
			</TR>
##READERLIST##
			<TR>
				<TD>&nbsp;</TD>
				<TD COLSPAN="2" CLASS="centered">New Reader</TD>
				<TD COLSPAN="2" CLASS="centered">Label:&nbsp;&nbsp;<input type="text" name="label" value="##NEXTREADER##"></TD>
				<TD COLSPAN="2" CLASS="centered">Protocol:&nbsp;&nbsp;
					<select name="protocol">
##ADDPROTOCOL##
					</select>
				</TD>
				<TD COLSPAN="4" CLASS="centered"><input type="submit" name="action" value="Add" title="Add new Reader" ##BTNDISABLED##></TD>
				<TD COLSPAN="7"></TD>
			</TR>
		</TABLE>
	</form>
##TPLFOOTER##
