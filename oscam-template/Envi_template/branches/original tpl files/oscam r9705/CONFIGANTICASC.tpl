<!--OSCam;365386254;1.20-unstable_svn;9705;CS_ANTICASC-->
		<input name="part" type="hidden" value="anticasc">
		<input name="enabled" type="hidden" value="0">
		<TABLE CLASS="config">
			<TR><TH COLSPAN="2">Edit Anticascading Config</TH></TR>
			<TR><TD><A data-p="enabled_2">Enabled:</A></TD><TD><input name="enabled" type="checkbox" value="1" ##CHECKED##><label></label></TD></TR>
			<TR><TD><A>Numusers:</A></TD><TD><input name="numusers" type="text" size="5" maxlength="5" value="##NUMUSERS##"></TD></TR>
			<TR><TD><A>Sampletime:</A></TD><TD><input name="sampletime" type="text" size="5" maxlength="5" value="##SAMPLETIME##"></TD></TR>
			<TR><TD><A>Samples:</A></TD><TD><input name="samples" type="text" size="5" maxlength="5" value="##SAMPLES##"></TD></TR>
			<TR><TD><A>Penalty:</A></TD>
				<TD>
					<select name="penalty">
						<option value="0" ##PENALTY0##>0 - Only write to log</option>
						<option value="1" ##PENALTY1##>1 - Fake DW delayed</option>
						<option value="2" ##PENALTY2##>2 - Ban</option>
						<option value="3" ##PENALTY3##>3 - Real DW delayed</option>
					</select>
				</TD></TR>
			<TR><TD><A>AClogfile:</A></TD><TD><input name="aclogfile" type="text" size="63" maxlength="127" value="##ACLOGFILE##"></TD></TR>
			<TR><TD><A>Fakedelay:</A></TD><TD><input name="fakedelay" type="text" size="5" maxlength="5" value="##FAKEDELAY##"></TD></TR>
			<TR><TD><A>Denysamples:</A></TD><TD><input name="denysamples" type="text" size="5" maxlength="5" value="##DENYSAMPLES##"></TD></TR>