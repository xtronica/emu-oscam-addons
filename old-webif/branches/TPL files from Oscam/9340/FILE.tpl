<!--OSCam;2231059239;1.20-unstable_svn;9340;-->
##TPLHEADER##
##TPLMENU##
##TPLFILEMENU##
##TPLMESSAGE##
##SDEBUG##
	<DIV CLASS="logmenu">##LOGMENU##</DIV>
	<DIV CLASS="filterform">##FILTERFORM##</DIV>
	<form action="files.html" method="post">
		<input type="hidden" name="file" value="##PART##">
		<textarea name="filecontent" class="editor" rows="50" cols="200">##FILECONTENT##</textarea>
		<BR><BR>##WRITEPROTECTION##<BR><BR>
		<input type="submit" name="action" value="Save" title="Save file" ##BTNDISABLED##>
	</form>
##TPLFOOTER##
