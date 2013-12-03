<!--OSCam;1686789756;1.20-unstable_svn;9063;-->
##TPLHEADER##
##TPLMENU##
##TPLMESSAGE##
	<form action="user_edit.html" method="get">
		<input name="user" type="hidden" value="##USERNAME##">
		<TABLE CLASS="config">
			<TR><TH COLSPAN="2">Edit User ##USERNAME##</TH></TR>
			<TR><TD class="mandatory">##TPLHELPPREFIX##user#pwd##TPLHELPSUFFIX##Password:</A></TD><TD class="mandatory"><input name="pwd" type="text" size="63" maxlength="63" value="##PASSWORD##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##user#description##TPLHELPSUFFIX##Description:</A></TD><TD><input name="description" type="text" size="63" maxlength="256" value="##DESCRIPTION##"></TD></TR>
			<TR><TD class="mandatory">##TPLHELPPREFIX##user#disabled##TPLHELPSUFFIX##Disabled:</A></TD><TD class="mandatory"><SELECT NAME="disabled"><OPTION VALUE="0">NO</OPTION><OPTION VALUE="1" ##DISABLEDCHECKED##>YES</OPTION></SELECT></TD></TR>
			<TR><TD>##TPLHELPPREFIX##user#expdate##TPLHELPSUFFIX##Exp. Date:</A></TD><TD><input name="expdate" type="text" size="30" maxlength="30" value="##EXPDATE##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##user#failban##TPLHELPSUFFIX##Failban:</A></TD><TD><input name="failban" type="text" size="2" maxlength="1" value="##FAILBAN##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##user#allowedtimeframe##TPLHELPSUFFIX##Allowed Timeframe:</A></TD><TD><input name="allowedtimeframe" type="text" size="15" maxlength="11" value="##ALLOWEDTIMEFRAME##">&nbsp;(hh:mm-hh:mm)</TD></TR>
			<TR><TD>##TPLHELPPREFIX##user#allowedprotocols##TPLHELPSUFFIX##Allowed Protocols:</A></TD><TD><input name="allowedprotocols" type="text" size="63" maxlength="60" value="##ALLOWEDPROTOCOLS##"></TD></TR>
			<TR><TD class="mandatory">##TPLHELPPREFIX##user#group##TPLHELPSUFFIX##Group:</A></TD><TD class="mandatory"><input name="group" type="text" size="30" maxlength="155" value="##GROUPS##"> Valid values 1-64</TD></TR>
			<TR><TD>##TPLHELPPREFIX##user#hostname##TPLHELPSUFFIX##Hostname:</A></TD><TD><input name="hostname" type="text" size="63" maxlength="63" value="##DYNDNS##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##user#uniq##TPLHELPSUFFIX##Uniq:</A></TD>
				<TD>
					<select name="uniq">
						<option value="0" ##UNIQSELECTED0##>0 - none</option>
						<option value="1" ##UNIQSELECTED1##>1 - strict first</option>
						<option value="2" ##UNIQSELECTED2##>2 - per IP</option>
						<option value="3" ##UNIQSELECTED3##>3 - strict last</option>
						<option value="4" ##UNIQSELECTED4##>4 - per IP last</option>
					</select>
				</TD>
			</TR>
			<TR><TD>##TPLHELPPREFIX##user#sleep##TPLHELPSUFFIX##Sleep:</A></TD><TD><input name="sleep" type="text" size="4" maxlength="4" value="##SLEEP##"></TD></TR>
##TPLUSEREDITMONLEVEL##
			<TR><TD>##TPLHELPPREFIX##user#au##TPLHELPSUFFIX##AU:</A></TD><TD><input name="au" type="text" size="63" maxlength="63" value="##AUREADER##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##user#services##TPLHELPSUFFIX##Services:</A></TD>
				<TD>
					<TABLE class="invisible">
##SIDS##
					</TABLE>
				</TD>
			</TR>
			<TR><TD>##TPLHELPPREFIX##user#caid##TPLHELPSUFFIX##CAID:</A></TD><TD><input name="caid" type="text" size="63" maxlength="160" value="##CAIDS##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##user#ident##TPLHELPSUFFIX##Ident:</A></TD><TD><textarea name="ident" cols="58" rows="3" class="bt">##IDENTS##</textarea></TD></TR>
			<TR><TD>##TPLHELPPREFIX##user#chid##TPLHELPSUFFIX##CHID:</A></TD><TD><textarea name="chid" cols="58" rows="3" class="bt">##CHIDS##</textarea></TD></TR>
			<TR><TD>##TPLHELPPREFIX##user#class##TPLHELPSUFFIX##Class:</A></TD><TD><input name="class" type="text" size="63" maxlength="150" value="##CLASS##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##user#betatunnel##TPLHELPSUFFIX##Betatunnel:</A></TD><TD><textarea name="betatunnel" cols="58" rows="3" class="bt">##BETATUNNELS##</textarea></TD></TR>
			<TR><TD>##TPLHELPPREFIX##user#suppresscmd08##TPLHELPSUFFIX##Suppresscmd08:</A></TD><TD><SELECT NAME="suppresscmd08"><OPTION VALUE="0">CMD08 active</OPTION><OPTION VALUE="1" ##SUPPRESSCMD08##>CMD08 suppressed</OPTION></SELECT></TD></TR>
			<TR><TD>##TPLHELPPREFIX##user#sleepsend##TPLHELPSUFFIX##Sleepsend:</A></TD><TD><input name="sleepsend" type="text" size="3" maxlength="3" value="##SLEEPSEND##"> 0 or 255</TD></TR>
			<TR><TD>##TPLHELPPREFIX##user#umaxidle##TPLHELPSUFFIX##User Max Idle:</A></TD><TD><input name="umaxidle" type="text" size="3" maxlength="3" value="##UMAXIDLE##"> s to disconnect idle users</TD></TR>
			<TR><TD>##TPLHELPPREFIX##user#emmreassembly##TPLHELPSUFFIX##EMM Reassembly:</A></TD>
				<TD>
					<select name="emmreassembly">
						<option value="0" ##EMMRSELECTED0##>0 - disabled</option>
						<option value="1" ##EMMRSELECTED1##>1 - enabled for DVBAPI</option>
						<option value="2" ##EMMRSELECTED2##>2 - enabled (default)</option>
					</select>
				</TD>
			</TR>
##TPLUSEREDITANTICASC##
##TPLUSEREDITCCCAM##
			<TR><TD>##TPLHELPPREFIX##user#keepalive##TPLHELPSUFFIX##Keepalive:</A></TD><TD><SELECT NAME="keepalive"><OPTION VALUE="0">OFF</OPTION><OPTION VALUE="1" ##KEEPALIVE##>ON</OPTION></SELECT></TD></TR>
##TPLUSEREDITCACHEEXBIT##
			<TR>
				<TD class="centered"><input type="submit" name="action" value="Save" title="Save settings and reload users" ##BTNDISABLED##></TD>
				<TD class="centered"><input name="newuser" type="text" size="20" maxlength="20" title="Enter new username if you want to clone this user">&nbsp;&nbsp;&nbsp;<input type="submit" name="action" value="Save As" title="Save as new user and reload users" ##BTNDISABLED##></TD>
			</TR>
		</TABLE>
	</form>
##TPLFOOTER##
