<!--OSCam;4117907078;1.20-unstable_svn;9665;CS_CACHEEX-->
##TPLHEADERSHORT##
	<script type="text/javascript">
	
	var page = 'cacheex';
	var jsonurl = '';
	var parameters = '';
	var stoppoll = 1;
	var pollintervall = 0;
	var httprefresh = '##REFRESHTIME##';

	</script>
##TPLBODY##
##TPLMENU##
##TPLMESSAGE##
	<DIV ID="subnav">
		<input id="subtoggle" type="checkbox"></input>
		<label class="subtoggle" onclick="" for="subtoggle"></label>
		<UL ID="nav">
			<LI CLASS="configmenu"><A HREF="cacheex.html?action=resetallcacheexstats">Reset CacheEX-Stats</A></LI>
		</UL>
	</DIV>
	<DIV ID="searchTable">
		<TABLE CLASS="cacheex">
			<TR><TH>Filter: <input type="text" id="searchTerm" class="search_box" onkeyup="doSearch()" onClick="cdpause()" onBlur="initDoc()"></TH></TR>
		</TABLE>
	</DIV>
	<TABLE ID="dataTable" CLASS="stats">
		<THEAD>
			<TR><TH COLSPAN="12">CacheEX Stats for ##OWN_CACHEEX_NODEID##</TH></TR>
			<TR id="headline">
				<TH>Direction</TH>
				<TH data-sort="string-ins" class="sortable">Type</TH>
				<TH data-sort="string-ins" class="sortable">Name</TH>
				<TH data-sort="string-ins" class="sortable">IP</TH>
				<TH data-sort="string-ins" class="sortable">NODE</TH>
				<TH data-sort="string-ins" class="sortable">Cache EX Mode</TH>
				<TH data-sort="int" class="sortable">Push</TH>
				<TH data-sort="int" class="sortable">Got</TH>
				<TH data-sort="int" class="sortable">CWC Info</TH>
				<TH data-sort="int" class="sortable">Hit</TH>
				<TH data-sort="int" class="sortable">Err</TH>
				<TH data-sort="int" class="sortable">CW Diff</TH>
			</TR>
		</THEAD>
		<TBODY>
##TABLECLIENTROWS##
##TABLEREADERROWS##
		</TBODY>
	</TABLE>
	<TABLE ID="cachexstats" CLASS="margintop">
		<TR>
			<TH COLSPAN="5">Cache Statistics</TH>
		</TR>
		<TR>
			<TH>Total</TH>
			<TD ID="out" CLASS="centered"><B>push  </B>##TOTAL_CACHEXPUSH_IMG## ##TOTAL_CACHEXPUSH##</TD>
			<TD ID="in" CLASS="centered"><B>got   </B>##TOTAL_CACHEXGOT_IMG## ##TOTAL_CACHEXGOT##</TD>
			<TD CLASS="centered"><B>hit: </B>##TOTAL_CACHEXHIT## (##REL_CACHEXHIT##%)</TD>
			<TD CLASS="centered"><B>size: </B>##TOTAL_CACHESIZE##</TD>
		</TR>
	</TABLE>
##TPLFOOTER##