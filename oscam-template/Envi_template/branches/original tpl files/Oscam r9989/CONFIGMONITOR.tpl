<!--OSCam;3916887355;1.20-unstable_svn;9989;MODULE_MONITOR-->
		<input name="part" type="hidden" value="monitor">
		<TABLE CLASS="config">
			<TR><TH COLSPAN="2">Edit Monitor Config</TH></TR>
			<TR><TD><A>Port:</A></TD><TD><input name="port" class="short" type="text" maxlength="5" value="##MONPORT##"></TD></TR>
			<TR><TD><A data-p="serverip_2">Serverip:</A></TD><TD><input name="serverip" class="medium" type="text" maxlength="15" value="##SERVERIP##"></TD></TR>
			<TR><TD><A>No crypt:</A></TD><TD><input name="nocrypt" type="text" maxlength="200" value="##NOCRYPT##"></TD></TR>
			<TR><TD><A>Au low:</A></TD><TD><input name="aulow" class="withunit short" type="text"  maxlength="5" value="##AULOW##"> min</TD></TR>
			<TR><TD><A>Hide client to:</A></TD><TD><input name="hideclient_to" class="withunit short" type="text" maxlength="5" value="##HIDECLIENTTO##"> s</TD></TR>
			<TR>
				<TD><A>Monlevel:</A></TD>
				<TD><select name="monlevel">
					<option value="0" ##MONSELECTED0##>0 - no access to monitor</option>
					<option value="1" ##MONSELECTED1##>1 - only server and own procs</option>
					<option value="2" ##MONSELECTED2##>2 - all procs, but viewing only, default</option>
					<option value="3" ##MONSELECTED3##>3 - all procs, reload of oscam.user possible</option>
					<option value="4" ##MONSELECTED4##>4 - complete access</option>
					</select>
				</TD>
			</TR>
