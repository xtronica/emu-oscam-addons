<!--OSCam;42148670;1.20-unstable_svn;9365;CS_ANTICASC-->
				<TR><TH>&nbsp;</TH><TH>User specific settings for Anticascading</TH></TR>
				<TR><TD>##TPLHELPPREFIX##user#numusers##TPLHELPSUFFIX##Anticascading numusers:</A></TD>
					<TD><input name="numusers" type="text" size="3" maxlength="3" value="##AC_USERS##">
					&nbsp;Global Numuser value:<SPAN CLASS="global_conf" TITLE="This value is used if Anticascading numusers = -1"><A HREF="config.html?part=anticasc">##CFGNUMUSERS##</A></SPAN></TD>
				</TR>
				<TR><TD>##TPLHELPPREFIX##user#penalty##TPLHELPSUFFIX##Anticascading penalty:</A></TD>
					<TD>
						<select name="penalty">
							<option value="-1" ##PENALTY-1##>-1 - Use global penalty level</option>
							<option value="0" ##PENALTY0##>&nbsp;0 - Only write to log</option>
							<option value="1" ##PENALTY1##>&nbsp;1 - Fake DW</option>
							<option value="2" ##PENALTY2##>&nbsp;2 - Ban</option>
							<option value="3" ##PENALTY3##>&nbsp;3 - Fake DW delayed</option>
						</select>
						&nbsp;Global Penalty level:<SPAN CLASS="global_conf"><A HREF="config.html?part=anticasc" TITLE="This value is used if Anticascading penalty = -1">##CFGPENALTY##</A></SPAN>
					</TD>
				</TR>
