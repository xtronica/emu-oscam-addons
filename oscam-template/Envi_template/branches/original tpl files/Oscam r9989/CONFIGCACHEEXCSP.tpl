<!--OSCam;4259254927;1.20-unstable_svn;9989;CS_CACHEEX-->
			<TR><TH COLSPAN="2">CacheEx / CSP</TH></TR>
			<TR><TD><A>CacheEx CW Check:</A></TD><TD><input name="cacheex_cw_check" type="text" maxlength="320" value="##CACHEEXCWCHECK##"><br />Format: caid[&amp;mask][@provid][$servid]:mode:counter[,n]</TD></TR>
			<TR><TD><A>Wait time:</A></TD><TD><input name="wait_time" type="text" maxlength="320" value="##WAIT_TIME##"> ms</TD></TR>
			<TR><TD><A>Max hit time:</A></TD><TD><input name="max_hit_time" class="withunit short" type="text" maxlength="5" value="##MAX_HIT_TIME##"> s keep hit for dynamic wait time</TD></TR>
			<TR><TD><A data-p="cacheexenablestats_2">Write statistic:</A></TD><TD><input name="cacheexenablestats" value="0" type="hidden"><input name="cacheexenablestats" value="1" type="checkbox" ##CACHEEXSTATSSELECTED##><label></label></TD></TR>
			<TR><TD><A>Wait until ctimeout:</A></TD><TD><input name="wait_until_ctimeout" value="0" type="hidden"><input name="wait_until_ctimeout" value="1" type="checkbox" ##WTTCHECKED##><label></label></TD></TR>

			<TR><TH COLSPAN="2">CSP</TH></TR>
			<TR><TD><A>Port:</A></TD><TD><input name="csp_port" type="text" class="short" maxlength="5" value="##PORT##"></TD></TR>
			<TR><TD><A>Serverip:</A></TD><TD><input name="csp_serverip" type="text" class="medium" maxlength="15" value="##SERVERIP##"></TD></TR>
			<TR><TD><A>ECM filter:</A></TD><TD><input name="csp_ecm_filter" type="text" maxlength="320" value="##CSP_ECM_FILTER##"></TD></TR>
			<TR><TD><A>ECM filter adv.:</A></TD><TD><input name="csp_allow_request" value="0" type="hidden"><input name="csp_allow_request" value="1" type="checkbox" ##ARCHECKED##><label>allow request</label></TD></TR>
			<TR><TD><A>Reforward cacheex:</A></TD><TD><input name="csp_allow_reforward" value="0" type="hidden"><input name="csp_allow_reforward" value="1" type="checkbox" ##ARFCHECKED##><label>allow reforward</label></TD></TR>
