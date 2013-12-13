<!--OSCam;1316855467;1.20-unstable_svn;9102;-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><HTML>
<HEAD>
	<TITLE>OSCAM build r##CS_SVN_VERSION##</TITLE>
	<meta http-equiv="Content-Type" content="text/html; charset=##HTTP_CHARSET##">
	<meta name="robots" content="noindex,nofollow">
	<link rel="stylesheet" type="text/css" href="site.css">
	<link href="favicon.ico" rel="icon" type="image/x-icon">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script type="text/javascript" src="oscam.js"></script>
	<script type="text/javascript">
	<!--
	addUnloadHandler();
	//-->
	</script>
</HEAD>
<BODY>
<DIV id="wrapper">
<DIV class="margintop"></DIV><!-- Solution for footer, set margin from top -->
<DIV id="content">

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
	<DIV CLASS="settimer">
	<!-- Script for refresh page -->
	<SPAN id="timer">Refreshing has been stopped!</SPAN>
	<script language="JavaScript">
		var countDownInterval=##REFRESHTIME##;
		var countDownTime=countDownInterval+1;
		function countDown(){
		countDownTime--;
		if (countDownTime <=0){
		countDownTime=countDownInterval;
		clearTimeout(counter)
		window.location.href="userconfig.html"
		return
		}
		document.getElementById("timer").innerHTML="Next refresh page in <b> " + countDownTime + " </b> secs"; // info text 
		counter=setTimeout("countDown()", 1000);
		}

		function StartcountDown(){
		document.getElementById("timer").innerHTML="Next refresh page in <b> " + countDownTime + " </b> secs"; // info text					   
		countDown()
		}

		function StopcountDown() {
		clearTimeout(counter);
		document.getElementById("timer").innerHTML="Refreshing has been stopped!"; // info text
		};

		window.onload=StartcountDown;
	</script>
		<DIV CLASS="timerbtn">
			<input type="submit" value="Stop" onclick="StopcountDown()" title="Stop refresh page">
			<input type="submit" value="Start" onclick="StartcountDown()" title="Start refresh page">
		</DIV>
	</DIV>
	<DIV class="filterform"><FORM action="user_edit.html" method="get">##NEWUSERFORM##</FORM></DIV>
	<script type="text/javascript" charset="utf-8">
		$(document).ready(function() {
			$('#tableuser').dataTable( {
				"bStateSave": true,
				"sDom": 'C<"clear">lfrtip',
				"oColVis": {
				"aiExclude": [0,1,2,3,4,8,9,13,16,17,21,22,23,24],
				"sAlign": "right",
				"sSize": "css",
				"iOverlayFade": 200,
				"activate": "mouseover",
				},
				"sPaginationType": "full_numbers",
				"sSize": "css",
				"aLengthMenu": [[25, 50, 100, -1], [25, 50, 100, "All"]],
				"iDisplayLength": 25,
				"aoColumnDefs": [
					{ "bSortable": false, "aTargets": [ 0,5,6,7,11,12,13,14,15,18,19,20,21,22,23,24 ] }
				],
				"aaSorting": [[ 1, "desc" ]]
			} );
		} );
	</script>
	<TABLE ID="tableuser" CLASS="users">
		<THEAD>
			<TR>
				<TH style="background-color:transparent;"></TH>
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
				<TH TITLE="Sum of ECM's in last 60s">ECMs(60s)</TH>
				<TH TITLE="Expiration date of account">Exp. Date</TH>
				<TH style="background-color:transparent;"></TH>
				<TH style="background-color:transparent;"></TH>
				<TH style="background-color:transparent;"></TH>
			</TR>
		</THEAD>
		<TBODY>
	##USERCONFIGS##
		<TBODY>

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
			<TH TITLE="Sum of all ECM's in last 60s">ECMs(60s) ALL</TH>
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
			<TD class="centered">##TOTAL_ECM_MIN##</TD>
			<TD class="centered">##TOTAL_CW##</TD>
			<TD class="centered">##TOTAL_CWOK## (##REL_CWOK##%)</TD>
			<TD class="centered">##TOTAL_CWCACHE## (##REL_CWCACHE##%)</TD>
			<TD class="centered">##TOTAL_CWTUN## (##REL_CWTUN##%)</TD>
			<TD class="centered">##TOTAL_CWNOK## (##REL_CWNOK##%)</TD>
			<TD class="centered">##TOTAL_CWIGN## (##REL_CWIGN##%)</TD>
			<TD class="centered">##TOTAL_CWTOUT## (##REL_CWTOUT##%)</TD>
			<TD class="centered"><A HREF="userconfig.html?action=resetserverstats" TITLE="Reset statistics for server"><IMG CLASS="icon" SRC="image?i=ICRES" ALT="Reset Server Stats"></A></TD>
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
