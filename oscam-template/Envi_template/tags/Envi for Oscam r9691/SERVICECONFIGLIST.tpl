<!--OSCam;4110958595;1.20-unstable_svn;9687;-->
##TPLHEADER##
##TPLMENU##
	<DIV ID="subnav" style="display:none">
		<UL ID="nav"><LI></LI></UL>
	</DIV>
##TPLMESSAGE##
	<DIV ID="newservice">
		<form action="services_edit.html" method="get">
		<TABLE ID="addnewservice">
			<TR>
				<TH>Service Name: <input name="service" type="text"><input type="submit" value="Add" title="Add new Service" ##BTNDISABLED##></TH>
			</TR>
		</TABLE>
		</form>
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