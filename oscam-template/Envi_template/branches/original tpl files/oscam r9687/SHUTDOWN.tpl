<!--OSCam;2552782154;1.20-unstable_svn;9687;-->
##TPLHEADERSHORT##
	<script type="text/javascript">var count = 10;var redirect="./status.html";function countDown(){if (count <=0){window.location = redirect;}else{count--;document.getElementById("timer").innerHTML = "<BR><P CLASS='text-large-red'>OSCam Restart/Shutdown in " +count+ " Seconds</P><BR><BR>";setTimeout("countDown()", 1000)}}</script>
##TPLBODY##
	<SPAN ID="timer"><SCRIPT type="text/javascript">countDown();</SCRIPT></SPAN>
##TPLFOOTER##