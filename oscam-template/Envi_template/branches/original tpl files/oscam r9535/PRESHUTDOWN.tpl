<!--OSCam;4242062961;1.20-unstable_svn;9535;-->
##TPLHEADER##
##TPLMENU##
		<DIV class="warning">
			All current users will be disconnected if you shutdown or restart OSCam!<BR><BR>
			When you use &quot;Shutdown&quot; you'll not be able to start OSCam again from this web interface!<BR>
			The interface would try reload itself a few seconds after shutdown/restart.<BR>
			<H4>Do you really want to shutdown/restart OSCam?</H4>
		</DIV>
		<form action="shutdown.html" method="get">
			<input type="submit" name="action" value="Shutdown" title="Shutdown OSCam" ##BTNDISABLED##>
			<input type="submit" name="action" value="Restart" title="Restart OSCam" ##BTNDISABLED##>
		</form>
##TPLFOOTER##