<!--OSCam;171217362;1.20-unstable_svn;8785;-->
##TPLHEADER##
##TPLMENU##
	<br><br><br>
	<DIV class = "warning">Do you really want to shutdown&#47; restart oscam?<br>All users will become disconnected.<br>
		If you use &#39;Shutdown&#39; you will not be able to restart oscam from webinterface.<br>
		The webinterface will try to connect to oscam once a few seconds after shutdown&#47; restart.</b><br>
	</DIV>
	<br>
	<form action="shutdown.html" method="get">
		<input type="submit" name="action" value="Shutdown" title="Shutdown OSCam" ##BTNDISABLED##>
		<input type="submit" name="action" value="Restart" title="Restart OSCam" ##BTNDISABLED##>
	</form>
##TPLFOOTER##
