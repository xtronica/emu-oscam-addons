<!--OSCam;2489487885;1.20-unstable_svn;8864;-->
##TPLHEADER##
##TPLMENU##
##TPLMESSAGE##
    <DIV class="subnav subnav-fixed">
		<UL id="sub">
			<LI CLASS="configmenu"><A HREF="userconfig.html?part=adduser">Add User</A></LI>
			<LI CLASS="configmenu"><A HREF="userconfig.html?action=reinit">Reinit User DB</A></LI>
			<LI CLASS="configmenu"><A HREF="userconfig.html?action=resetalluserstats">Reset Userstats</A></LI>
			<LI CLASS="configmenu"><A TARGET="_blank" HREF="graph.svg?type=users&hidelabels=1">Show Graphs</A></LI>
		</UL>
	</DIV>
	<TABLE CLASS="users">
		<TR>
			<TH>Enabled</TH>
			<TH>Label</TH>
			<TH>Status</TH>
			<TH>Address</TH>
			<TH>Protocol</TH>
			<TH>Last Channel</TH>
			<TH>On Channel</TH>
			<TH>Idle</TH>
			<TH TITLE="Delivered ECM with status OK">OK</TH>
			<TH TITLE="Delivered ECM with status not OK">NOK</TH>
			<TH TITLE="Ignored ECM by filters, part of NOK">IGN</TH>
			<TH TITLE="Timeout ECM, part of NOK">TOUT</TH>
##TPLCWCYCLETHV##
			<TH TITLE="Delivered ECM from cache, part of OK">CACHE</TH>
			<TH TITLE="Delivered ECM from tunneled, part of OK">TUN</TH>
			<TH TITLE="Last ECM Time">LTIME</TH>
			<TH TITLE="Valid EMM delivered">EOK</TH>
			<TH TITLE="Invalid EMM delivered">ENOK</TH>
			<TH TITLE="CW rate since Server start (CW rate current Session)">CW Rate</TH>
			<TH TITLE="Different services during last 60s">CASC USERS</TH>
			<TH TITLE="Expiration date of account">Exp. Date</TH>
			<TH colspan="3" class="centered">Action</TH>
		</TR>
##USERCONFIGS##
##NEWUSERFORM##
	</TABLE><BR>
	<SPAN CLASS = "user_totals_headline">Totals for the server:</SPAN>
	<TABLE CLASS="user_totals">
		<TR>
			<TH TITLE="Total users">Total</TH>
			<TH TITLE="Total disabled users">Disabled</TH>
			<TH TITLE="Total expired users">Expired</TH>
			<TH TITLE="Total active users">Active</TH>
			<TH TITLE="Connected users">Connected</TH>
			<TH TITLE="Online users requesting ecms">Online</TH>
			<TH TITLE="Delivered ECM with status OK">OK</TH>
			<TH TITLE="Delivered ECM with status not OK">NOK</TH>
			<TH TITLE="Ignored ECM by filters, part of NOK">IGN</TH>
			<TH TITLE="Timeout ECM, part of NOK">TOUT</TH>
			<TH TITLE="Delivered ECM from cache, part of OK">CACHE</TH>
			<TH TITLE="Delivered ECM from tunneled, part of OK">TUN</TH>
			<TH>Action</TH>
		</TR>
		<TR>
			<TD class="centered">##TOTAL_USERS##</TD>
			<TD class="centered">##TOTAL_DISABLED##</TD>
			<TD class="centered">##TOTAL_EXPIRED##</TD>
			<TD class="centered">##TOTAL_ACTIVE##</TD>
			<TD class="centered">##TOTAL_CONNECTED##</TD>
			<TD class="centered">##TOTAL_ONLINE##</TD>
			<TD class="centered">##TOTAL_CWOK## (##REL_CWOK##%)</TD>
			<TD class="centered">##TOTAL_CWNOK## (##REL_CWNOK##%)</TD>
			<TD class="centered">##TOTAL_CWIGN## (##REL_CWIGN##%)</TD>
			<TD class="centered">##TOTAL_CWTOUT## (##REL_CWTOUT##%)</TD>
			<TD class="centered">##TOTAL_CWCACHE## (##REL_CWCACHE##%)</TD>
			<TD class="centered">##TOTAL_CWTUN## (##REL_CWTUN##%)</TD>
			<TD class="centered"><A HREF="userconfig.html?action=resetserverstats" TITLE="reset statistics for server"><IMG CLASS="icon" SRC="image?i=ICRES" ALT="Reset Server Stats"></A></TD>
		</TR>
	</TABLE><BR>
##TPLFOOTER##
