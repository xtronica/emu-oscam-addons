<!--OSCam;465509083;1.20-unstable_svn;9340;-->
##TPLHEADER##
##TPLMENU##
##TPLCONFIGMENU##
##TPLMESSAGE##
	<form action="config.html" method="get">
		<input name="part" type="hidden" value="webif">
		<input name="action" type="hidden" value="execute">
		<input name="http_prepend_embedded_css" type="hidden" value="0">
		<input name="httphideidleclients" type="hidden" value="0">
		<input name="httpshowpicons" type="hidden" value="0">
		<TABLE CLASS="config">
			<TR><TH COLSPAN="2">Edit WebIf Config</TH></TR>
			<TR><TD>##TPLHELPPREFIX##conf#httpport##TPLHELPSUFFIX##Http port:</A></TD><TD><input name="httpport" type="text" size="6" maxlength="6" value="##HTTPPORT##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#serverip_9##TPLHELPSUFFIX##Serverip:</A></TD><TD><input name="serverip" type="text" size="15" maxlength="15" value="##SERVERIP##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#httpuser##TPLHELPSUFFIX##Http user:</A></TD><TD><input name="httpuser" type="text" size="63" maxlength="64" value="##HTTPUSER##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#httppwd##TPLHELPSUFFIX##Http pwd:</A></TD><TD><input name="httppwd" type="text" size="63" maxlength="64" value="##HTTPPASSWORD##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#http_prepend_embedded_css##TPLHELPSUFFIX##Http prepend embedded css:</A></TD><TD><input name="http_prepend_embedded_css" value="0" type="hidden"><input name="http_prepend_embedded_css" type="checkbox" value="1" ##HTTPPREPENDEMBEDDEDCSS##></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#httpcss##TPLHELPSUFFIX##Http css:</A></TD>
 				<TD>
					<select name="httpcss">
##CSSOPTIONS##
					</select>
				</TD>
			</TR>
			<TR><TD>##TPLHELPPREFIX##conf#httphelplang##TPLHELPSUFFIX##Http Help Language (en|de|fr|it):</A></TD><TD><input name="httphelplang" type="text" size="3" maxlength="2" value="##HTTPHELPLANG##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#httpjscript##TPLHELPSUFFIX##Http javascript:</A></TD><TD><input name="httpjscript" type="text" size="63" maxlength="127" value="##HTTPJSCRIPT##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#httprefresh##TPLHELPSUFFIX##Http refresh:</A></TD><TD><input name="httprefresh" type="text" size="5" maxlength="5" value="##HTTPREFRESH##"> s</TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#httpshowpicons##TPLHELPSUFFIX##Http Show Picons:</A></TD><TD><input name="httpshowpicons" value="0" type="hidden"><input name="httpshowpicons" type="checkbox" value="1" ##SHOWPICONSCHECKED##></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#httptpl##TPLHELPSUFFIX##Http tpl:</A></TD><TD><input name="httptpl" type="text" size="63" maxlength="127" value="##HTTPTPL##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#httpscript##TPLHELPSUFFIX##Http script:</A></TD><TD><input name="httpscript" type="text" size="63" maxlength="127" value="##HTTPSCRIPT##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#httphideidleclients##TPLHELPSUFFIX##Http Hide Idle Clients:</A></TD><TD><input name="httphideidleclients" value="0" type="hidden"><input name="httphideidleclients" type="checkbox" value="1" ##CHECKED##></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#httphidetype##TPLHELPSUFFIX##Http Hide Type:</A></TD><TD><input name="httphidetype" type="text" size="10" maxlength="10" value="##HTTPHIDETYPE##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#httpallowed##TPLHELPSUFFIX##Http allowed:</A></TD><TD><input name="httpallowed" type="text" size="63" maxlength="200" value="##HTTPALLOW##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#httpdyndns##TPLHELPSUFFIX##Http dyndns:</A></TD><TD><input name="httpdyndns" type="text" size="63" maxlength="200" value="##HTTPDYNDNS##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#aulow##TPLHELPSUFFIX##Au low:</A></TD><TD><input name="aulow" type="text" size="5" maxlength="5" value="##AULOW##"> min</TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#hideclient_to##TPLHELPSUFFIX##Hide client to:</A></TD><TD><input name="hideclient_to" type="text" size="5" maxlength="5" value="##HIDECLIENTTO##"> s</TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#httpsavefullcfg##TPLHELPSUFFIX##Http save full config:</A></TD><TD><input name="httpsavefullcfg" value="0" type="hidden"><input name="httpsavefullcfg" type="checkbox" value="1" ##HTTPSAVEFULLSELECT##></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#httpshowstats##TPLHELPSUFFIX##Show info in STATUS:</A></TD>
				<TD>
					<TABLE class="invisible">
						<TR>
							<TD><input name="httpshowmeminfo" type="hidden" value="0"><input name="httpshowmeminfo" type="checkbox" value="1" ##SHOWMEMINFOCHECKED##> Memory/CPU</TD>
							<TD><input name="httpshowuserinfo" type="hidden" value="0"><input name="httpshowuserinfo" type="checkbox" value="1" ##SHOWUSERINFOCHECKED##> Users info</TD>
##TPLSHOWCACHEEXINFO##
						</TR>
					</TABLE>
				</TD>
			</TR>
##TPLHTTPFORCESSLV3##
			<TR><TD COLSPAN="2" ALIGN="right"><input type="submit" value="Save" title="Save settings" ##BTNDISABLED##></TD></TR>
		</TABLE>
	</form>
##TPLFOOTER##
