<!--OSCam;3937791028;1.20-unstable_svn;9665;-->
##TPLHEADERSHORT##
	<script type="text/javascript">
	
	var page = 'user';
	var jsonurl = 'oscamapi.json';
	var parameters = "?part=userstats";
	var stoppoll = 0;
	var pollintervall = 0;
	var httprefresh = '##REFRESHTIME##';
		
	</script>
	<script type="text/javascript">
	// script customization for templates
	
	/*
	* this function is called during poll runs on each row update
	* item contains the json class of actual item. Use the attribute
	* 'nopoll = "usercol1,usercolN"' in <tr> to exclude cell from normal poll
	*/
	function custompoll(item) {
		//example - uncomment to test
		/*
		var uid = "#" + item.user.usermd5;
		$( uid + " td.usercol4").html( 'ID of this row is ' + item.user.usermd5);
		*/
	}
	
	/*
	* this function is called after poll has updated the page
	*/
	function afterpoll(){
	 	// do something after poll
	}
	
	</script>
##TPLBODY##
##TPLMENU##
	<DIV ID="subnav"
		<input id="subtoggle" type="checkbox"></input>
		<label class="subtoggle" onclick="" for="subtoggle"></label>
		<UL ID="nav">
			<LI CLASS="configmenu"><A HREF="#" onclick="adduser();">Add User</A></LI>
			<LI CLASS="configmenu"><A HREF="userconfig.html?action=reinit">Reinit User DB</A></LI>
			<LI CLASS="configmenu"><A HREF="userconfig.html?action=resetalluserstats">Reset Userstats</A></LI>
			<LI CLASS="configmenu"><A TARGET="_blank" HREF="graph.svg?type=users&amp;hidelabels=1">Show Graphs</A></LI>
			<LI ID="nopoll" CLASS="pollselect" style="display: none;">httprefresh no set - polling disabled</LI>
			<LI ID="poll" CLASS="pollselect" style="display: none;">Pollintervall:<input type="text" name="pintervall" class="pintervall" value="" readonly>sec.<button id="dec">&ndash;</button><button id="inc">+</button></LI>
		</UL>
	</DIV>
##TPLMESSAGE##
	<DIV ID="newuser">
		<form action="user_edit.html" method="get">
		<TABLE CLASS="users">
			<TR><TH>New User: <input name="user" type="text"><input type="submit" value="Add User"></TH></TR>
		</TABLE>
		</form>
	</DIV>
	<DIV ID="searchTable">
		<TABLE CLASS="users">
			<TR><TH>Search: <input type="text" id="searchTerm" class="search_box"></TH></TR>
		</TABLE>
	</DIV>
	<TABLE ID="dataTable" CLASS="users">
	<THEAD>
		<TR>
			<TH COLSPAN="5"></TH>
			<TH CLASS="##GRPVIEW##"></TH>
			<TH></TH>
			<TH COLSPAN="8">ECM</TH>
			<TH COLSPAN="2">EMM</TH>
##TPLUSERCWCYCLE##
##TPLUSERANTICASC##
			<TH CLASS="##EXPIREVIEW##"></TH>
			<TH COLSPAN="3">Action</TH>
		</TR>
		<TR id="headline" onClick="cdpause()"> <!--  Resolve  -->
			<TH CLASS="nosort">On/Off</TH>
			<TH data-sort="string-ins" data-sort-default ="asc" class="sortable">User</TH>
			<TH data-sort="string-ins" data-sort-default ="asc" class="sortable">Status<BR>Address</TH>
			<TH data-sort="string-ins" data-sort-default ="asc" class="sortable">Protocol</TH>
			<TH CLASS="##GRPVIEW##">Groups</TH>
			<TH CLASS="nosort">Idle Time<BR>On Channel</TH>
			<TH data-sort="string" class="sortable">Last Channel</TH>
			<TH data-sort="int" class="sortable" TITLE="Last ECM Time">LTIME</TH>
			<TH data-sort="int" class="sortable" TITLE="Delivered ECM with status OK">OK</TH>
			<TH data-sort="int" class="sortable" TITLE="Delivered ECM with status not OK">NOK</TH>
			<TH data-sort="int" class="sortable" TITLE="Ignored ECM by filters, part of NOK">IGN</TH>
			<TH data-sort="int" class="sortable" TITLE="Timeout ECM, part of NOK">TOUT</TH>
			<TH data-sort="int" class="sortable" TITLE="Delivered ECM from cache, part of OK">CACHE</TH>
			<TH data-sort="int" class="sortable" TITLE="Delivered ECM from tunneled, part of OK">TUN</TH>
			<TH data-sort="int" class="sortable" TITLE="Sum of ECM's in last 60s">last 60s</TH>
			<TH data-sort="int" class="sortable" TITLE="Valid EMM delivered">OK</TH>
			<TH data-sort="int" class="sortable" TITLE="Invalid EMM delivered">NOK</TH>
##TPLCWCYCLETHV##
##TPLCWANTICASCTHV##
			<TH CLASS="nosort ##EXPIREVIEW##" TITLE="Expiration date of account">Exp. Date</TH>
			<TH CLASS="nosort"></TH>
			<TH CLASS="nosort"></TH>
			<TH CLASS="nosort"></TH>
		</TR>
	</THEAD>
	<TBODY class="content">
##USERCONFIGS##
	</TBODY>
	</TABLE>
	<TABLE CLASS="user_totals smallmargintop">
		<TR>
			<TH TITLE="Total users" COLSPAN="6">Users Info</TH>
		</TR>
		<TR>
			<TH TITLE="Total users">Total</TH>
			<TH TITLE="Total active users">Active</TH>
			<TH TITLE="Connected users">Connected</TH>
			<TH TITLE="Online users requesting ecms">Online</TH>
			<TH TITLE="Total disabled users">Disabled</TH>
			<TH TITLE="Total expired users">Expired</TH>
		</TR>
		<TR>
 			<TD id="tot_users" CLASS="centered">##TOTAL_USERS##</TD>
 			<TD id="tot_active" CLASS="centered">##TOTAL_ACTIVE##</TD>
 			<TD id="tot_connected" CLASS="centered">##TOTAL_CONNECTED##</TD>
 			<TD id="tot_online" CLASS="centered">##TOTAL_ONLINE##</TD>
 			<TD id="tot_disabled" CLASS="centered">##TOTAL_DISABLED##</TD>
 			<TD id="tot_expired" CLASS="centered">##TOTAL_EXPIRED##</TD>
		</TR>
	</TABLE>
	<TABLE CLASS="ECM_totals smallmargintop">
		<TR>
			<TH COLSPAN="8">Total Ecm Info</TH>
		</TR>
		<TR>
			<TH TITLE="Delivered ECM with status OK">OK incl. TUN</TH>
			<TH TITLE="Delivered ECM from cache, part of OK">CACHE 1,2,3</TH>
			<TH TITLE="Delivered ECM with status not OK">NOK</TH>
			<TH TITLE="Timeout ECM, part of NOK">TOUT</TH>
			<TH TITLE="Ignored ECM by filters, Excluded from calculation">Ignored</TH>
			<TH TITLE="Sum of all ECM's in last 60s">last(60s)</TH>
			<TH TITLE="SUM of all ECM's">ALL</TH>
		</TR>
		<TR>
			<TD id="tot_cwok" CLASS="centered">##TOTAL_CWOK## (##REL_CWOK##%)</TD>
			<TD id="tot_cwcache" CLASS="centered">##TOTAL_CWCACHE## (##REL_CWCACHE##%)</TD>
			<TD id="tot_cwnok" CLASS="centered">##TOTAL_CWNOK## (##REL_CWNOK##%)</TD>
			<TD id="tot_cwtout" CLASS="centered">##TOTAL_CWTOUT## (##REL_CWTOUT##%)</TD>
			<TD id="tot_cwign" CLASS="centered">##TOTAL_CWIGN##</TD>
			<TD id="tot_ecmmin" CLASS="centered">##TOTAL_ECM_MIN##</TD>
			<TD id="tot_cw" CLASS="centered">##TOTAL_CW##</TD>
		</TR>
		<TR>
			<TD id="tot_cwpos" CLASS="centered" COLSPAN="2"><B>Total OK:  </B> ##TOTAL_CWPOS## (##REL_CWPOS##%)</TD>
			<TD id="tot_cwneg" CLASS="centered" COLSPAN="2"><B>Total NOK:  </B>##TOTAL_CWNEG## (##REL_CWNEG##%)</TD>
			<TD CLASS="centered" COLSPAN="2"><B>Reset ECM Statistics:</B></TD>
			<TD CLASS="centered"><A HREF="userconfig.html?action=resetserverstats" TITLE="Reset statistics for server"><IMG CLASS="icon" SRC="image?i=ICRES" ALT="Reset Server Stats"></A></TD>
		</TR>
	</TABLE>
	<DIV id="picolor"></DIV>
##TPLFOOTER##
