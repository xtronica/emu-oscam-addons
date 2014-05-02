<!--OSCam;153911440;1.20-unstable_svn;9687;-->
##TPLHEADERSHORT##
	<script type="text/javascript">
	
	var page = 'reader';
	var jsonurl = 'oscamapi.json';
	var parameters = '?part=readerlist';
	var stoppoll = 0;
	var pollintervall = 0;
	var httprefresh = '##POLLREFRESHTIME##';

	</script>
##TPLBODY##
##TPLMENU##
##TPLMESSAGE##
	<DIV ID="subnav">
		<UL ID="nav">
			<LI CLASS="configmenu"><A HREF="#" onclick="addreader();">Add Reader</A></LI>
			<LI CLASS="configmenu"><A HREF="readers.html?action=reloadreaders">Reload Readers</A></LI>
			<LI CLASS="configmenu"><A HREF="scanusb.html">Scan USB</A></LI>
			<LI CLASS="configmenu"><A HREF="readers.html?action=resetallrdrstats">Reset Readerstats</A></LI>
			<LI CLASS="configmenu"><A TARGET="_blank" HREF="graph.svg?type=servers">Show Graphs</A></LI>
			<LI ID="poll" CLASS="pollselect" style="display: none;">Pollintervall:<input type="text" name="pintervall" class="pintervall" value="" readonly>sec.<button id="dec">&ndash;</button><button id="inc">+</button></LI>
			<LI ID="nopoll" CLASS="pollselect" style="display: none;">Pollrefresh no set - Polling disabled</LI>
		</UL>
	</DIV>
	<DIV ID="newreader">
		<form action="readerconfig.html" method="get">
			<TABLE CLASS="readers">
				<TR><TH>NEW Reader Label: <input type="text" name="label" value="##NEXTREADER##">  Protocol: <select name="protocol">##ADDPROTOCOL##</select><input type="submit" name="action" value="Add"></TH></TR>
			</TABLE>
		</form>
	</DIV>
	<DIV ID="searchTable">
		<TABLE CLASS="readers">
			<TR><TH><input type="text" id="searchTerm" class="search_box" placeholder="Enter Searchterm"></TH></TR>
		</TABLE>
	</DIV>
	<TABLE ID="dataTable" CLASS="readers">
	<THEAD>
		<TR>
			<TH COLSPAN="4"></TH>
			<TH COLSPAN="3">ECM</TH>
			<TH COLSPAN="4">EMM</TH>
##TPLREADERLBWU##
			<TH COLSPAN="6"></TH>
		</TR>
		<TR id="headline">
			<TH>On/Off</TH>
			<TH data-sort="string-ins" class="sortable">Reader</TH>
			<TH data-sort="string-ins" class="sortable">Protocol</TH>
			<TH>Groups</TH>
			<TH data-sort="int" class="sortable">OK</TH>
			<TH data-sort="int" class="sortable">NOK</TH>
			<TH>Filtered<BR><SPAN TITLE="filtered by ECM Header Whitelist"> Head </SPAN>/<SPAN TITLE="filtered by ECM Whitelist"> Len </SPAN></TH>
			<TH>error<BR><SPAN TITLE="unknown EMM"> UK </SPAN>/<SPAN TITLE="global EMM"> G </SPAN>/<SPAN TITLE="shared EMM"> S </SPAN>/<SPAN TITLE="unique EMM"> UQ </SPAN></TH>
			<TH>written<BR><SPAN TITLE="unknown EMM"> UK </SPAN>/<SPAN TITLE="global EMM"> G </SPAN>/<SPAN TITLE="shared EMM"> S </SPAN>/<SPAN TITLE="unique EMM"> UQ </SPAN></TH>
			<TH>skipped<BR><SPAN TITLE="unknown EMM"> UK </SPAN>/<SPAN TITLE="global EMM"> G </SPAN>/<SPAN TITLE="shared EMM"> S </SPAN>/<SPAN TITLE="unique EMM"> UQ </SPAN></TH>
			<TH>blocked<BR><SPAN TITLE="unknown EMM"> UK </SPAN>/<SPAN TITLE="global EMM"> G </SPAN>/<SPAN TITLE="shared EMM"> S </SPAN>/<SPAN TITLE="unique EMM"> UQ </SPAN></TH>
##TPLREADERLBWD##
			<TH COLSPAN="6">Action</TH>
		</TR>
	</THEAD>
	<TBODY>
##READERLIST##
	</TBODY>
	</TABLE>
	<DIV id="picolor"></DIV>
##TPLFOOTER##