<!--OSCam;2672753969;1.20-unstable_svn;8785;-->
##TPLHEADER##
##TPLMENU##
##TPLMESSAGE##
	<DIV class="subnav subnav-fixed">
		<UL id="sub">
			<LI CLASS="configmenu"><A HREF="readerstats.html?label=##ENCODEDLABEL##&amp;hide=-1">show all</A></LI>
			<LI CLASS="configmenu"><A HREF="readerstats.html?label=##ENCODEDLABEL##&amp;hide=4">hide 'not found'</A></LI>
			<LI CLASS="configmenu"><A HREF="readerstats.html?label=##ENCODEDLABEL##&amp;action=resetstat">reset statistics</A></LI>
			<LI CLASS="configmenu"><A HREF="readerstats.html?label=##ENCODEDLABEL##&amp;action=updateecmlen">store valid ecm len in whitelist</A></LI>
		</UL>
	</DIV>
	<TABLE CLASS="statsbalance">
	<TR><TH colspan="8"> Loadbalance statistics for reader ##LABEL##</TH></TR>
	<TR><TH>Channel</TH><TH>Channelname</TH><TH>ECM Length</TH><TH>Result</TH><TH>Avg-Time</TH><TH>Last-Time</TH><TH>Count</TH><TH>Last checked/ found</TH></TR>
##READERSTATSROW##
##READERSTATSROWFOUND##
##READERSTATSTOHEADLINE##
##READERSTATSROWTIMEOUT##
##READERSTATSNFHEADLINE##
##READERSTATSROWNOTFOUND##
	</TABLE>
	<br>Total ECM count: ##TOTALECM##<br>
##TPLFOOTER##
