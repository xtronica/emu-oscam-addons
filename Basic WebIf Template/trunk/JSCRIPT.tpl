<!--OSCam;4099487293;1.20-unstable_svn;9063;-->
function addUnloadHandler(){var a,e;if(window.attachEvent){a=window.attachEvent;e='on';}else{a=window.addEventListener;e='';}a(e+'load',function(){loadScroll();if(typeof Sys!='undefined' && typeof Sys.WebForms!='undefined')Sys.WebForms.PageRequestManager.getInstance().add_endRequest(loadScroll);},false);}function loadScroll(){var c=document.cookie.split(';');for(var i=0;i<c.length;i++){var p=c[i].split('=');if(p[0]=='scrollPosition'){p=unescape(p[1]).split('/');for(var j=0;j<p.length;j++){var e=p[j].split(',');try{if(e[0]=='window'){window.scrollTo(e[1],e[2]);}}catch(ex){}}return;}}}function saveScroll(){var s='scrollPosition=';var l,t;if(window.pageXOffset!==undefined){l=window.pageXOffset;t=window.pageYOffset;}else if(document.documentElement&&document.documentElement.scrollLeft!==undefined){l=document.documentElement.scrollLeft;t=document.documentElement.scrollTop;}else{l=document.body.scrollLeft;t=document.body.scrollTop;}if(l||t){s+='window,'+l+','+t+'/';}document.cookie=s+';';}
