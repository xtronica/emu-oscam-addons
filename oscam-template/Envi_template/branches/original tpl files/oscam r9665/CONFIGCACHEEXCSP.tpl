<!--OSCam;3837110765;1.20-unstable_svn;9665;CS_CACHEEX-->
			<TR><TH COLSPAN="2">CacheEx / CSP</TH></TR>
			<TR><TD>##TPLHELPPREFIX##conf#cacheex_cw_check##TPLHELPSUFFIX##CacheEx CW Check:</A></TD><TD><input name="cacheex_cw_check" type="text" size="63" maxlength="320" value="##CACHEEXCWCHECK##"><br />Format: caid[&amp;mask][@provid][$servid]:mode:counter[,n]</TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#wait_time##TPLHELPSUFFIX##Wait time:</A></TD><TD><input name="wait_time" type="text" size="63" maxlength="320" value="##WAIT_TIME##"> ms max waittime</TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#max_hit_time##TPLHELPSUFFIX##Max hit time:</A></TD><TD><input name="max_hit_time" type="text" size="5" maxlength="5" value="##MAX_HIT_TIME##"> s keep hit for dynamic wait time</TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#cacheexenablestats_2##TPLHELPSUFFIX##Write statistic:</A></TD><TD><input name="cacheexenablestats" value="0" type="hidden"><input name="cacheexenablestats" value="1" type="checkbox" ##CACHEEXSTATSSELECTED##></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#wait_until_ctimeout##TPLHELPSUFFIX##Wait until ctimeout:</A></TD><TD><input name="wait_until_ctimeout" value="0" type="hidden"><input name="wait_until_ctimeout" value="1" type="checkbox" ##WTTCHECKED##></TD></TR>

			<TR><TH COLSPAN="2">CSP</TH></TR>
			<TR><TD>##TPLHELPPREFIX##conf#csp_port##TPLHELPSUFFIX##Port:</A></TD><TD><input name="csp_port" type="text" size="5" maxlength="5" value="##PORT##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#csp_serverip##TPLHELPSUFFIX##Serverip:</A></TD><TD><input name="csp_serverip" type="text" size="15" maxlength="15" value="##SERVERIP##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#csp_ecm_filter##TPLHELPSUFFIX##ECM filter:</A></TD><TD><input name="csp_ecm_filter" type="text" size="63" maxlength="320" value="##CSP_ECM_FILTER##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#csp_allow_request##TPLHELPSUFFIX##ECM filter adv.:</A></TD><TD><input name="csp_allow_request" value="0" type="hidden"><input name="csp_allow_request" value="1" type="checkbox" ##ARCHECKED##>allow request</TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#csp_allow_reforward##TPLHELPSUFFIX##Reforward cacheex:</A></TD><TD><input name="csp_allow_reforward" value="0" type="hidden"><input name="csp_allow_reforward" value="1" type="checkbox" ##ARFCHECKED##>allow reforward</TD></TR>

