<!--OSCam;2913851798;1.20-unstable_svn;9989;CS_ANTICASC-->
				<TR><TH COLSPAN="2">User specific settings for Anticascading</TH></TR>
				<TR><TD><A>Anticascading numusers:</A></TD>
					<TD><input name="numusers" class="short" type="text" maxlength="3" value="##AC_USERS##">
					&nbsp;Global Numuser value:<SPAN CLASS="global_conf" TITLE="This value is used if Anticascading numusers = -1"><A HREF="config.html?part=anticasc">##CFGNUMUSERS##</A></SPAN></TD>
				</TR>
				<TR><TD><A>Anticascading penalty:</A></TD>
					<TD>
						<select name="penalty">
							<option value="-1" ##PENALTY-1##>-1 - Use global penalty level</option>
							<option value="0" ##PENALTY0##>&nbsp;0 - Only write to log</option>
							<option value="1" ##PENALTY1##>&nbsp;1 - Fake CW</option>
							<option value="2" ##PENALTY2##>&nbsp;2 - Ban</option>
							<option value="3" ##PENALTY3##>&nbsp;3 - Real CW delayed</option>
						</select>
						&nbsp;Global Penalty level:<SPAN CLASS="global_conf"><A HREF="config.html?part=anticasc" TITLE="This value is used if Anticascading penalty = -1">##CFGPENALTY##</A></SPAN>
					</TD>
				</TR>
				<TR><TH COLSPAN="2">User specific settings for AntiCascading over Sid Count (ACoSC)</TH></TR>
				<TR><TD><A>ACoSC max_active_sids:</A></TD>
					<TD><input name="acosc_max_active_sids" class="short" type="text" maxlength="3" value="##ACOSC_MAX_ACTIVE_SIDS##">
					&nbsp;Global ACoSC_max_active_sids value:<SPAN CLASS="global_conf" TITLE="This value is used if acosc_max_active_sids = -1"><A HREF="config.html?part=anticasc">##CFG_ACOSC_MAX_ACTIVE_SIDS##</A></SPAN></TD>
				</TR>
				<TR><TD><A>ACoSC zap_limit:</A></TD>
					<TD><input name="acosc_zap_limit" class="short" type="text" maxlength="3" value="##ACOSC_ZAP_LIMIT##">
					&nbsp;Global ACoSC_zap_limit:<SPAN CLASS="global_conf" TITLE="This value is used if acosc_zap_limit = -1"><A HREF="config.html?part=anticasc">##CFG_ACOSC_ZAP_LIMIT##</A></SPAN></TD>
				</TR>
				<TR><TD><A>ACoSC penalty:</A></TD>
					<TD>
						<select name="acosc_penalty">
							<option value="-1" ##ACOSC_PENALTY-1##>-1 - Use global acosc_penalty level</option>
							<option value="0" ##ACOSC_PENALTY0##>&nbsp;0 - Only write to log</option>
							<option value="1" ##ACOSC_PENALTY1##>&nbsp;1 - Fake CW</option>
							<option value="2" ##ACOSC_PENALTY2##>&nbsp;2 - Ban</option>
							<option value="3" ##ACOSC_PENALTY3##>&nbsp;3 - Real CW delayed</option>
						</select>
						&nbsp;Global ACoSC-Penalty level:<SPAN CLASS="global_conf"><A HREF="config.html?part=anticasc" TITLE="This value is used if ACoSC penalty = -1">##CFG_ACOSC_PENALTY##</A></SPAN>
					</TD>
				</TR>
				<TR><TD><A>ACoSC penalty_duration:</A></TD>
					<TD><input name="acosc_penalty_duration" class="short" type="text" maxlength="5" value="##ACOSC_PENALTY_DURATION##"> sec
					&nbsp;Global ACoSC_penalty_duration value:<SPAN CLASS="global_conf" TITLE="This value is used if acosc_penalty_duration = -1"><A HREF="config.html?part=anticasc">##CFG_ACOSC_PENALTY_DURATION##</A></SPAN></TD>
				</TR>
				<TR><TD><A>ACoSC delay:</A></TD>
					<TD><input name="acosc_delay" type="text" class="short" maxlength="5" value="##ACOSC_DELAY##"> msec
					&nbsp;Global ACoSC_delay value:<SPAN CLASS="global_conf" TITLE="This value is used if acosc_delay = -1"><A HREF="config.html?part=anticasc">##CFG_ACOSC_DELAY##</A></SPAN></TD>
				</TR>
