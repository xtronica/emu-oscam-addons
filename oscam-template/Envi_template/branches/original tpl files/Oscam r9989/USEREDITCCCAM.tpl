<!--OSCam;2459966748;1.20-unstable_svn;9989;MODULE_CCCAM-->
				<TR><TH COLSPAN="2">User specific settings for CCcam</TH></TR>
				<TR><TD><A>CCC Maxhops:</A></TD><TD><input name="cccmaxhops" class="short" type="text" maxlength="2" value="##CCCMAXHOPS##"></TD></TR>
				<TR><TD><A>CCC Reshare:</A></TD><TD><input name="cccreshare" class="short" type="text" maxlength="2" value="##CCCRESHARE##">
					&nbsp;Global CCCam Reshare:<SPAN CLASS="global_conf" TITLE="This value is used if CCC Reshare = -1"><A HREF="config.html?part=cccam">##RESHARE##</A></SPAN></TD></TR>
				<TR><TD><A>CCC Ignore reshare:</A></TD><TD>
					<select name="cccignorereshare">
						<option value="-1" ##CCCIGNRSHRSELECTED-1##>-1 - Use Global CCcam Ignore Reshare value</option>
						<option value="0"  ##CCCIGNRSHRSELECTED0## >&nbsp;0 - Use reshare level of Server</option>
						<option value="1"  ##CCCIGNRSHRSELECTED1## >&nbsp;1 - Use reshare level of Reader or User</option>
					</select>
				&nbsp;Global Ignore Reshare value:<SPAN CLASS="global_conf" TITLE="This value is used if CCC Ignore reshare = -1"><A HREF="config.html?part=cccam">##CFGIGNORERESHARE##</A></SPAN>
				</TD></TR>
				<TR><TD><A>CCC stealth:</A></TD><TD>
					<select name="cccstealth">
						<option value="-1" ##CCCSTEALTHSELECTED-1##>GLOBAL: Use Global CCcam Stealth value</option>
						<option value="0"  ##CCCSTEALTHSELECTED0## >DISABLE: Use extended OSCam<->CCcam Protocol</option>
						<option value="1"  ##CCCSTEALTHSELECTED1## >ENABLE: Behaviour like the original CCcam Protocol</option>
					</select>
				&nbsp;Global CCcam Stealth value:<SPAN CLASS="global_conf"><A HREF="config.html?part=cccam">##STEALTH##</A></SPAN>
				</TD></TR>
