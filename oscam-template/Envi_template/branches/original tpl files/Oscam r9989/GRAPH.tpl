<!--OSCam;3316551805;1.20-unstable_svn;9989;-->
<?xml-stylesheet type="text/css" href="site.css" ?>
<svg xml:space='preserve' xmlns='http://www.w3.org/2000/svg'
	xmlns:xlink='http://www.w3.org/1999/xlink'
	width='100%' height='100%'
	viewBox='0 0 800 400'
	preserveAspectRatio='YMid'
	onload='init(evt)'
	style='background-color:#F0F0F0'
>
<g id='graph' style='font-family: Verdana, Arial; '>
	<rect id='g' class='graph_bg' x1='0' y1='0' width='800' height='400' style='fill:#F0F0F0;' />
	<text id='graph_error' class='graph_error' x='400' y='125' visibility='hidden'>Error occured!</text>
	<path id='graph_grid' class='graph_grid' d='M 2 105 L 798 105 M 2 180 L 798 180 M 2 255 L 798 255 M 2 330 L 798 330'/>

	<rect id='graph_grid_button_back' style='fill:#A9D0F5;' cursor='pointer' x='425' y='5' rx='5' ry='5' width='40' height='20'/>
	<text id='graph_grid_button_text' style='font-size:8px; fill:black;' cursor='pointer' class='graph_grid_txt' x='460' y='17'>Change</text>	
	<text id='graph_grid_interval' style='font-size:8px; fill:black;' class='graph_grid_txt' x='420' y='17'>-</text>	
	<rect id='graph_grid_button' style='opacity:0;' cursor='pointer' x='340' y='5' rx='5' ry='5' width='130' height='20'/>
		
	<text id='graph_grid_txt4' class='graph_grid_txt' x='798' y='328'>-</text>
	<text id='graph_grid_txt3' class='graph_grid_txt' x='798' y='253'>-</text>
	<text id='graph_grid_txt2' class='graph_grid_txt' x='798' y='178'>-</text>
	<text id='graph_grid_txt1' class='graph_grid_txt' x='798' y='103'>-</text>
</g>
<script type='text/ecmascript'>
<![CDATA[
if (typeof getURL == 'undefined') {
	getURL = function(url, callback) {
 		try {
			if (typeof callback.operationComplete == 'function') {
				callback = callback.operationComplete;
			}
		} catch (e) {}
		if (typeof callback != 'function') {
			throw 'No callback function for getURL';
		}
		var http_request = null;
		if (typeof XMLHttpRequest != 'undefined') {
			http_request = new XMLHttpRequest();
		} else if (typeof ActiveXObject != 'undefined') {
			try {
				http_request = new ActiveXObject('Msxml2.XMLHTTP');
			} catch (e) {
				try {
					http_request = new ActiveXObject('Microsoft.XMLHTTP');
				} catch (e) {}
			}
		}
		if (!http_request) {
			throw 'Both getURL and XMLHttpRequest are undefined';
		}
		http_request.onreadystatechange = function() {
			if (http_request.readyState == 4) {
				callback( 
					{
						success : true,
						content : http_request.responseXML,
						contentType : http_request.getResponseHeader('Content-Type')
					}
				);
			}
		}
		http_request.open('GET', url, true);
		http_request.send(null);
	}
}
var SVGDoc = null;
var svgNS = 'http://www.w3.org/2000/svg';
var max = 0;
var plots = new Array();
var Color = new Array('blue','green','orange','brown','fuchsia','red','cyan','yellow','purple','turquoise','coral','khaki','greenyellow','thistle','tan','silver','darkgreen','darkviolet','gold','indianred','black');
var max_num_points = 799;
var step = 799 / max_num_points ;
var fetch_url='';
var interval = 3500;
var activesecs = 15;
var activeTask = null;
var hideLabels = false;
function init(evt) {
	fetch_url=location.search.split('?');
	fetch_url='oscamapi.html?part=ecmhistory&' + fetch_url[fetch_url.length-1];
	if ( location.search.indexOf('hidelabels=1') > 0 ) hideLabels = true;
	SVGDoc = evt.target.ownerDocument;
	SVGDoc.getElementById('graph_grid_button').addEventListener('mousedown', switch_interval, false);
	SVGDoc.getElementById('graph_grid_button_text').addEventListener('mousedown', switch_interval, false);
	fetch_data();
	switch_interval();
}
function switch_interval() {
	if (interval<=1000) {
		interval -= 250;
	} else if (interval<=5000) {
		interval -= 500;
	} else {
		interval -= 1000;
	}
	if ( interval<250 ) interval = 10000;
	SVGDoc.getElementById('graph_grid_interval').firstChild.data = 'Refresh:'+interval+'ms';
	window.clearInterval(activeTask);
	activeTask = setInterval('fetch_data()', interval);
}
function fetch_data() {
	if (fetch_url) {
		getURL(fetch_url, plot_data);
	} else {
		handle_error();
	}
}
function showlabel(evt) {
	var id = evt.target.id.split('_');
	var obj = SVGDoc.getElementById('graph_txt_'+id[2]);
	if ( evt.type=='mouseover' ) {
			obj.setAttributeNS(null,'style','font-size:9px;display:;');
	} else if ( evt.type=='mouseout' ) {
		obj.setAttributeNS(null,'style','font-size:9px;display:none;');
	}
}
function plot_data(obj) {
	if (!obj.success) return handle_error();
	if (!obj.content) return handle_error();
	var readers = obj.content.getElementsByTagName('oscam')[0].getElementsByTagName('status')[0].getElementsByTagName('client');
	i=0;
	max=0;
	rdx=0;
	while (rdx < readers.length) {
		if ( plots[i] == null ) {
			plots[i] = new Array();
			plots[i]['data'] = new Array();
			plots[i]['ecmmin'] = -1;
			plots[i]['ecmmax'] = 0;
			plots[i]['last_fetched_timestamp'] = 0;
			plots[i]['last_valid_ecm_duration'] = -1;
		}
		plots[i]['name'] = readers[rdx].getAttribute('name');
		var ecmhistory = readers[rdx].getElementsByTagName('request')[0].getAttribute('ecmhistory').split(',');
		var maxecm = -1;
		for (var ii = ecmhistory.length-1; ii >= 0; ii--) {
			var ecm = ecmhistory[ii].split(':');
			if ( ecm[0]>-1 ) {
				if ( ecm[1]==0 ) {
					if ( parseInt( ecm[2] ) > plots[i]['last_fetched_timestamp'] ) {
						if ( parseInt( ecm[0] ) > maxecm ) maxecm = parseInt( ecm[0] );
						plots[i]['last_fetched_timestamp'] = parseInt( ecm[2] );
					}
				}
			}
		}
		if ( maxecm == -1 ) {
			maxecm = plots[i]['last_valid_ecm_duration'];
		} else {
			plots[i]['last_valid_ecm_duration'] = maxecm;
		}
		plots[i]['ecmtime'] = maxecm;
		plots[i]['idletime'] = parseInt( readers[rdx].getElementsByTagName('times')[0].getAttribute('idle') );
		if (!isNumber(plots[i]['ecmtime'])) {
			plots[i]['ecmtime'] = -1;
		} else {
			if ( plots[i]['ecmmax'] < plots[i]['ecmtime'] ) plots[i]['ecmmax'] = plots[i]['ecmtime'] ;
			if ( ( plots[i]['ecmmin'] > plots[i]['ecmtime']) || (plots[i]['ecmmin'] == -1 ) ) plots[i]['ecmmin'] = plots[i]['ecmtime'] ;
		}
		if (!isNumber(plots[i]['idletime'])) {
			plots[i]['ecmtime'] = -1;
		} else if (plots[i]['idletime']>activesecs) {
			plots[i]['ecmtime'] = -1;
		}
		plots[i]['idle'] = readers[rdx].getElementsByTagName('times')[0].getAttribute('idle');
		if ( plots[i]['data'].length==max_num_points ) {
			var ii = 0;
			while (ii < max_num_points) {
				plots[i]['data'][ii] = plots[i]['data'][ii+1];
				ii++;
			}
			plots[i]['data'].length--;
		}
		plots[i]['data'][plots[i]['data'].length] = plots[i]['ecmtime'];
		if ( SVGDoc.getElementById('graph_txt_'+i) == null ) {
			var newText = document.createElementNS(svgNS,'text');
			newText.setAttributeNS(null,'x',3);
			newText.setAttributeNS(null,'fill',Color[ i - (parseInt(i/Color.length)*Color.length)]);
			newText.setAttributeNS(null,'id','graph_txt_'+i);
			if ( hideLabels ) {
				newText.setAttributeNS(null,'y',13);
				newText.setAttributeNS(null,'style','font-size:9px;display:none;');
			} else {
				newText.setAttributeNS(null,'y',13+(10*i));
				newText.setAttributeNS(null,'style','font-size:9px');
			}
			var textNode = document.createTextNode(plots[i]['name']);
      newText.appendChild(textNode);
			document.getElementById('graph').appendChild(newText);
		}
		if ( plots[i]['ecmtime']==-1 ) {			SVGDoc.getElementById('graph_txt_'+i).firstChild.data = plots[i]['name'] + ':idle';
		} else {			SVGDoc.getElementById('graph_txt_'+i).firstChild.data = plots[i]['name'] + ':' + plots[i]['ecmtime'];
		}		if ( plots[i]['ecmmin'] != -1 ) SVGDoc.getElementById('graph_txt_'+i).firstChild.data += ' (Max:'+plots[i]['ecmmax']+'/Min:'+plots[i]['ecmmin']+')';
		if ( SVGDoc.getElementById('graph_path_'+i) == null ) {
			var newPath = document.createElementNS(svgNS,'path');
			newPath.setAttributeNS(null,'id','graph_path_'+i);
			newPath.setAttributeNS(null,'fill','none');
			newPath.setAttributeNS(null,'stroke',Color[ i - (parseInt(i/Color.length)*Color.length)]);
			newPath.setAttributeNS(null,'stroke-width','1');
			newPath.setAttributeNS(null,'stroke-opacity','0.8');
			if ( hideLabels ) {
				newPath.addEventListener('mouseover', showlabel, false);
				newPath.addEventListener('mouseout', showlabel, false);
			}
			document.getElementById('graph').appendChild(newPath);
		}
		a=0;
		var plot = plots[i]['data'];
		while (a < plot.length) {
			if (plot[a] > max) max = plot[a];
			a++;
		}
		i++;
	 	rdx++;
	}
	var rmax=makeRoundMax(max);
	var height = 329;
 	var scale = height / rmax;
	i=0;
	while (i < plots.length) {
 		var plot = plots[i]['data'];
		var path = 'M 2 ' + (height - (plot[0] * scale));
		for (b = 2; b < plot.length; b++) {
			var x = step * b;
			var y_in = height - (plot[b] * scale);
			path += ' L' + x + ' ' + y_in;
		}
 		SVGDoc.getElementById('graph_path_'+i).setAttributeNS(null, 'd', path);
		i++;
	}
 	SVGDoc.getElementById('graph_grid_txt1').firstChild.data = 3*rmax/4 + 'ms'
	SVGDoc.getElementById('graph_grid_txt2').firstChild.data = 2*rmax/4 + 'ms';
	SVGDoc.getElementById('graph_grid_txt3').firstChild.data = rmax/4 + 'ms';
 	SVGDoc.getElementById('graph_grid_txt4').firstChild.data = '0ms'
	SVGDoc.getElementById('graph_error').setAttributeNS(null, 'visibility', 'hidden');
}
function makeRoundMax(max) {
		rmax = 1000;
		i = 0;
		while (max > rmax) {
			i++;
			if (i && (i % 4 == 0)) {
				rmax *= 1.25;
			} else {
				rmax *= 2;
			}
			if (i == 8) rmax *= 1.000;
		}
	return rmax;
}
function handle_error() {
	SVGDoc.getElementById('graph_error').setAttributeNS(null, 'visibility', 'visible');
}
function isNumber(a) {
	return typeof a == 'number' && isFinite(a);
}
]]>
</script>
</svg>
