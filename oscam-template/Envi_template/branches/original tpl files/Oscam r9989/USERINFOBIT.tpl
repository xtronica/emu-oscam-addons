<!--OSCam;397974512;1.20-unstable_svn;9989;-->
<TBODY CLASS="infocolswidth">
	<TR CLASS="infocolswidth">
		<TH></TH>
		<TD></TD>
		<TD></TD>
		<TD></TD>
		<TD></TD>
		<TD></TD>
		<TD></TD>
		<TD></TD>
		<TD></TD>
		<TD></TD>
		<TD></TD>
		<TD></TD>
		<TD></TD>
	</TR>
</TBODY>
<TBODY CLASS="statususerinfo ##DISPLAYUSERINFO##">
	<TR><TH COLSPAN="13" CLASS="nameinfo">Users info</TH></TR>
	<TR>
		<TH>Users</TH>
		<TD COLSPAN="2" CLASS="centered"><B>Total:</B>&nbsp;<span id="total_users">##TOTAL_USERS##</span></TD>
		<TD COLSPAN="2" CLASS="centered"><B>Enabled:</B>&nbsp;<span id="total_active">##TOTAL_ACTIVE##</span></TD>
		<TD COLSPAN="2" CLASS="centered"><B>Disabled:</B>&nbsp;<span id="total_disabled">##TOTAL_DISABLED##</span></TD>
		<TD COLSPAN="2" CLASS="centered"><B>Expired:</B>&nbsp;<span id="total_expired">##TOTAL_EXPIRED##</span></TD>
		<TD COLSPAN="2" CLASS="centered"><B>Connected:</B>&nbsp;<span id="total_connected">##TOTAL_CONNECTED##</span></TD>
		<TD COLSPAN="2" CLASS="centered"><B>Online:</B>&nbsp;<span id="total_online">##TOTAL_ONLINE##</span></TD>
	</TR>
</TBODY>
<TBODY CLASS="statusecminfo ##DISPLAYECMINFO##">
	<TR>
		<TH COLSPAN="13" CLASS="nameinfo">Ecm Info</TH>
	</TR>
	<TR>
		<TH>ECM</TH>
		<TD COLSPAN="6" CLASS="centered" TITLE="SUM of all OK ECM's"><B>Total OK:</B>&nbsp;<span id="total_cwpos">##TOTAL_CWPOS##</span> (<span id="rel_cwpos">##REL_CWPOS##</span> %)</TD>
		<TD COLSPAN="6" CLASS="centered" TITLE="SUM of all NOK ECM's"><B>Total NOK:</B>&nbsp;<span id="total_cwneg">##TOTAL_CWNEG##</span> (<span id="rel_cwneg">##REL_CWNEG##</span> %)</TD>
	</TR>
	<TR>
		<TH>Details</TH>
		<TD COLSPAN="3" CLASS="centered" TITLE="Delivered ECM with status OK incl. tunneld"><B>OK incl. TUN:</B>&nbsp;<span id="total_cwok">##TOTAL_CWOK##</span> (<span id="rel_cwok">##REL_CWOK##</span> %)</TD>
		<TD COLSPAN="3" CLASS="centered" TITLE="Delivered ECM from cache, part of OK"><B>Cache 1,2,3:</B>&nbsp;<span id="total_cwcache">##TOTAL_CWCACHE##</span> (<span id="rel_cwcache">##REL_CWCACHE##</span> %)</TD>
		<TD COLSPAN="3" CLASS="centered" TITLE="Delivered ECM with status not OK"><B>not OK:</B>&nbsp;<span id="total_cwnok">##TOTAL_CWNOK##</span> (<span id="rel_cwnok">##REL_CWNOK##</span> %)</TD>
		<TD COLSPAN="3" CLASS="centered" TITLE="Timeout ECM, part of NOK"><B>Timeout:</B>&nbsp;<span id="total_cwtout">##TOTAL_CWTOUT##</span> (<span id="rel_cwtout">##REL_CWTOUT##</span> %)</TD>
	</TR>
	<TR>
		<TH>EMM</TH>
		<TD COLSPAN="6" CLASS="centered" TITLE="SUM of all OK EMM's"><B>Total OK:</B>&nbsp;<span id="total_emok">##TOTAL_EMOK##</span> (<span id="rel_emok">##REL_EMOK##</span> %)</TD>
		<TD COLSPAN="6" CLASS="centered" TITLE="SUM of all NOK EMM's"><B>Total NOK:</B>&nbsp;<span id="total_emnok">##TOTAL_EMNOK##</span> (<span id="rel_emnok">##REL_EMNOK##</span> %)</TD>
	</TR>
	<TR>
		<TH>Statistics</TH>
		<TD COLSPAN="3" CLASS="centered" TITLE="SUM of all ECM's"><B>All ECM's:</B>&nbsp;<span id="total_cw">##TOTAL_CW##</span></TD>
		<TD COLSPAN="2" CLASS="centered" TITLE="Ignored ECM by filters, Excluded from calculation"><B>ECM's Ignored:</B>&nbsp;<span id="total_cwign">##TOTAL_CWIGN##</span></TD>
		<TD COLSPAN="2" CLASS="centered" TITLE="Sum of all ECM's in last 60 seconds"><B>ECM's last (60 s):</B>&nbsp;<span id="total_ecm_min">##TOTAL_ECM_MIN##</span></TD>
		<TD COLSPAN="2" CLASS="centered" TITLE="SUM of all EMM's"><B>All EMM's:</B>&nbsp;<span id="total_em">##TOTAL_EM##</span></TD>
		<TD COLSPAN="3" CLASS="centered" TITLE="Reset ECM Statistics"><B>Reset ECM Statistics:</B>&nbsp;<A HREF="?action=resetserverstats" TITLE="Reset statistics for server"><IMG CLASS="icon" SRC="image?i=ICRES" ALT="Reset Server Stats" onclick="return confirm('Reset ECM Statistics ?')"></A></TD>
	</TR>
</TBODY>