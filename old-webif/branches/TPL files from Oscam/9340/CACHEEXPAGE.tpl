<!--OSCam;4244870673;1.20-unstable_svn;9340;CS_CACHEEX-->
##TPLHEADER##
##TPLMENU##
##TPLMESSAGE##
	<TABLE CLASS="stats upspace">
		<TR><TH COLSPAN="12">CacheEX Stats for ##OWN_CACHEEX_NODEID##</TH></TR>
		<TR><TH>Direction</TH>
			<TH>Type</TH>
			<TH>Name</TH>
			<TH>IP</TH>
			<TH>NODE</TH>
			<TH>Cache EX Mode</TH>
			<TH>Push</TH>
			<TH>Got</TH>
			<TH>CWC Info</TH>
			<TH>Hit</TH>
			<TH>Err</TH>
			<TH>CW Diff</TH>
		</TR>
##TABLECLIENTROWS##
##TABLEREADERROWS##
	</TABLE>
	<TABLE CLASS="upspace">
		<TR><TH>Total push</TH>
			<TH>Total got</TH>
			<TH>Total hit</TH>
			<TH>Cache size</TH>
		</TR>
		<TR><TD CLASS="centered">##TOTAL_CACHEXPUSH_IMG##</TD>
			<TD CLASS="centered">##TOTAL_CACHEXGOT_IMG##</TD>
			<TD CLASS="centered">&nbsp;</TD><TD CLASS="centered">&nbsp;</TD>
		</TR>
		<TR><TD CLASS="centered">##TOTAL_CACHEXPUSH##</TD>
			<TD CLASS="centered">##TOTAL_CACHEXGOT##</TD>
			<TD CLASS="centered">##TOTAL_CACHEXHIT## (##REL_CACHEXHIT##%)</TD>
			<TD CLASS="centered">##TOTAL_CACHESIZE##</TD>
		</TR>
	</TABLE>
##TPLFOOTER##
