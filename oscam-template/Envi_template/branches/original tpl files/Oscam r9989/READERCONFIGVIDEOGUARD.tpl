<!--OSCam;3445111099;1.20-unstable_svn;9989;READER_VIDEOGUARD-->
				<TR><TH COLSPAN="2">Reader specific settings for Videoguard</TH></TR>
				<TR><TD><A>Boxid:</A></TD><TD><input name="boxid" class="medium" type="text" maxlength="8" value="##BOXID##"></TD></TR>
				<TR><TD><A>Fix 9993 for CAID 0919:</A><input name="fix9993" type="hidden" value="0"></TD><TD><input name="fix9993" type="checkbox" value="1" ##FIX9993CHECKED##><label></label></TD></TR>
				<TR><TD><A>Filter 0x07 for CAID 09C4, 098C:</A><input name="fix07" type="hidden" value="0"></TD><TD><input name="fix07" type="checkbox" value="1" ##FIX07CHECKED##><label></label></TD></TR>
				<TR><TD><A>Force NDS Version:</A></TD>
					<TD>
						<select name="ndsversion">
							<option value="0" ##NDSVERSION0##>0 - AUTO</option>
							<option value="1" ##NDSVERSION1##>1 - NDS1 Forced</option>
							<option value="12" ##NDSVERSION21##>12 - NDS1+ Forced</option>
							<option value="2" ##NDSVERSION2##>2 - NDS2 Forced</option>
						</select>
					</TD>
				</TR>
				<TR><TD><A>ins7E11 TA1 Byte (1 byte):</A></TD><TD><input name="ins7e11" class="short" type="text" maxlength="2" value="##INS7E11##"></TD></TR>
				<TR><TD><A>ins2E06 payload (4 bytes):</A></TD><TD><input name="ins2e06" class="medium" type="text" maxlength="8" value="##INS2E06##"></TD></TR>
				<TR><TD><A>ins7E payload (26 bytes):</A></TD><TD><input name="ins7e" type="text"maxlength="56" value="##INS7E##"></TD></TR>
