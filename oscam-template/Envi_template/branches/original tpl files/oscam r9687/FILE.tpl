<!--OSCam;2697905092;1.20-unstable_svn;9687;-->
##TPLHEADER##
##TPLMENU##
##TPLFILEMENU##
<SCRIPT type="text/javascript">function gotosite(){var URL = document.gotoform.url_list.options[document.gotoform.url_list.selectedIndex].value; window.location.href = URL;}</SCRIPT>
<P ID="filename">##APIFILENAME##</P>
##TPLMESSAGE##
##SDEBUG##
	<DIV CLASS="logmenu">##LOGMENU##</DIV>
	<DIV CLASS="filterform">##FILTERFORM##</DIV>
	<form action="files.html" method="post">
		<input type="hidden" name="file" value="##PART##">
		<textarea name="filecontent" class="editor" rows="50" cols="200">##FILECONTENT##</textarea>
		##WRITEPROTECTION##
		<P ID="filesubmit"><input type="submit" name="action" value="Save" title="Save file" ##BTNDISABLED##></P>
	</form>
##TPLFOOTER##