<!--OSCam;3012655616;1.20-unstable_svn;9535;-->
##TPLHEADER##
##TPLMENU##
	<DIV ID="subnav">
		<UL ID="nav"></UL>
	</DIV>
##TPLMESSAGE##
	<DIV ID="newservice">
		<TABLE ID="addnewservice">
			<TR>
				<form action="services_edit.html" method="get"><TH>Service Name: <input name="service" type="text"><input type="submit" value="Add" title="Add new Service" ##BTNDISABLED##></TH></form>
			</TR>
		</TABLE>
	</DIV>
	<TABLE ID="servicesedit">
		<TR>
			<TH CLASS="centered">Label</TH>
			<TH CLASS="centered">Overview</TH>
			<TH COLSPAN="2" CLASS="centered">Action</TH>
		</TR>
##SERVICETABS##
	</TABLE>
##TPLFOOTER##