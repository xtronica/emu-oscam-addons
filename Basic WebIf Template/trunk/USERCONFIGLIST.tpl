<!--OSCam;4137675300;1.20-unstable_svn;9063;-->
##TPLHEADER##
##TPLMENU##
##TPLMESSAGE##
	<TABLE CLASS="configmenu">
		<TR>
			<TD CLASS="configmenu"><A HREF="userconfig.html?part=adduser">Add User</A></TD>
			<TD CLASS="configmenu"><A HREF="userconfig.html?action=reinit">Reinit User DB</A></TD>
			<TD CLASS="configmenu"><A HREF="userconfig.html?action=resetalluserstats">Reset Userstats</A></TD>
			<TD CLASS="configmenu"><A TARGET="_blank" HREF="graph.svg?type=users&hidelabels=1">Show Graphs</A></TD>
		</TR>
	</TABLE>
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
			<TH TITLE="Total users">Total User</TH>
			<TH TITLE="Total disabled users">Disabled User</TH>
			<TH TITLE="Total expired users">Expired User</TH>
			<TH TITLE="Total active users">Active User</TH>
			<TH TITLE="Connected users">Connected User</TH>
			<TH TITLE="Online users requesting ecms">Online User</TH>
		</TR>
		<TR>
			<TD class="centered">##TOTAL_USERS##</TD>
			<TD class="centered">##TOTAL_DISABLED##</TD>
			<TD class="centered">##TOTAL_EXPIRED##</TD>
			<TD class="centered">##TOTAL_ACTIVE##</TD>
			<TD class="centered">##TOTAL_CONNECTED##</TD>
			<TD class="centered">##TOTAL_ONLINE##</TD>
		</TR>
	</TABLE><BR>
	<TABLE CLASS="ECM_totals">
		<TR>
			<TH TITLE="SUM of all ECM's">ECMs ALL</TH>
			<TH TITLE="Delivered ECM with status OK">ECMs OK</TH>
			<TH TITLE="Delivered ECM from cache, part of OK">CACHE1,2,3</TH>
			<TH TITLE="Delivered ECM from tunneled, part of OK">ECMs TUN (OK/CACHE)</TH>
			<TH TITLE="Delivered ECM with status not OK">ECMs NOK</TH>
			<TH TITLE="Ignored ECM by filters, part of NOK">ECMs IGN</TH>
			<TH TITLE="Timeout ECM, part of NOK">ECMs TOUT</TH>
			<TH>Action</TH>
		</TR>
		<TR>
			<TD class="centered">##TOTAL_CW##</TD>
			<TD class="centered">##TOTAL_CWOK## (##REL_CWOK##%)</TD>
			<TD class="centered">##TOTAL_CWCACHE## (##REL_CWCACHE##%)</TD>
			<TD class="centered">##TOTAL_CWTUN## (##REL_CWTUN##%)</TD>
			<TD class="centered">##TOTAL_CWNOK## (##REL_CWNOK##%)</TD>
			<TD class="centered">##TOTAL_CWIGN## (##REL_CWIGN##%)</TD>
			<TD class="centered">##TOTAL_CWTOUT## (##REL_CWTOUT##%)</TD>
			<TD class="centered"><A HREF="userconfig.html?action=resetserverstats" TITLE="reset statistics for server"><IMG CLASS="icon" SRC="image?i=ICRES" ALT="Reset Server Stats"></A></TD>
		</TR>
	</TABLE><BR>
	<TABLE CLASS="ECM_totals">
		<TR>
			<TH TITLE="Delivered ECM with POS Status">ECM's Positiv</TH>
			<TH TITLE="Delivered ECM with NEG Status">ECM's Negativ</TH>
		</TR>
		<TR>
			<TH TITLE="Delivered ECM with status OK/CACHE">READERs / CACHE1,2,3</TH>
			<TH TITLE="Delivered ECM with status NOK/IGN/TOUT">NOK / IGN / TOUT</TH>
		</TR>
		<TR>
			<TD class="centered">##REL_CWPOSOK##% / ##REL_CWPOSCACHE##%</TD>
			<TD class="centered">##REL_CWNEGNOK##% / ##REL_CWNEGIGN##% / ##REL_CWNEGTOUT##%</TD>
		</TR>
		<TR>
			<TD class="centered">##TOTAL_CWPOS## (##REL_CWPOS##%)</TD>
			<TD class="centered">##TOTAL_CWNEG## (##REL_CWNEG##%)</TD>
		</TR>
	</TABLE><BR>
##TPLFOOTER##
