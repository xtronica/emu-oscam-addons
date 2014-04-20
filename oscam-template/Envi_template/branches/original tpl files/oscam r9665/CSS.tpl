<!--OSCam;3369095974;1.20-unstable_svn;9665;-->
/* ================================= GENERALY CSS SETTINGS ================================= */
/* ******** 1. RESET  */
* {margin:0;padding:0}

/* ******** 2. BASIC DIVISION PAGES */
html,body,* html #wrapper {height:100%}
#wrapper {position:relative;min-height:100%}
#content {margin-bottom:0;padding:0 8px 120px}
#footer {position:absolute;bottom:0;width:100%}

/* ******** 3. BASIC SETTINGS */

/* Set default font and text align 
 * Color setting in COLOR section
 */
body {
	font-family:Arial;
	font-size:11px;
	text-align:center
}

/* Large red text in shutdown.html, autoconf.html 
 * Color setting in COLOR section
 */
p.text-large-red {
	font-weight:700;
	font-size:large
}
/* in file.html, script.html */
#filename,#filesubmit {
	font-weight:700;
	font-size:14px;
	margin: 10px 0
}

/* in readerstats.html for P */
#text_totalecm {}

/* in footer.html */
p.styleauthor:after {content:"Streamboard Team"}

/* in pre_shutdown.html */
h4 {
	font-size:18px;
	line-height:9px;
	margin-top:20px;
	margin-bottom:20px
}

/* ******** 4. LINKS */

/* in status_sdebug.html */
a.debugl:link {
	margin:0 1px
}
a.debugl:hover{
	background-color:#A00;
	color:#FFF
}

/* in module-webif.c for debug selection in STATUS item and FILES item -> part logfile */
a.debugls:link {
	padding:1px 2px 2px
}
/* Tooltip in cccamentitletooltip.html, foundentitlements.html, noentitlements.html and module-webif.c */
a.tooltip,
a.tooltip1 {
	position:relative;
	text-decoration:none;
	cursor:default
}
a.tooltip span,
a.tooltip1 span {
	display:none;
	z-index:99
}
a:hover span {
	display:block;
	position:absolute;
	top:1em;
	right:2em;
	padding:4px;
	font-weight:normal;
	text-align:left
}

/* ******** 5. MAIN MENU */

/* ID are for creating main menu in menu.html */
#main {}
#mainmenu {
	height:30px;
	padding-top:10px;
	display:inline-block;
	position:relative
}
#mainmenu li {
	display:inline;
	margin-left:2px;
	margin-right:2px;
	padding:5px 3px 3px;
	font-size:18px;
	font-weight:700
}
li.menu a, li.menu_selected a {
	text-decoration:none
}

/* ******** 6. SUBNAV */

/* ID are for creating subnavigation menu in 
 * cacheex.html, config\menu.html, entitlements.html, failban.html,
 * files\menu.html, readerconfig.html, readers.html, readerstats.html, script.html, 
 * services.html, services_edit.html, status.html, user_edit.html, userconfig.html */
#subnav {}
#nav {
	height:22px;
}
#nav li {
	display:inline;
	margin-left:2px;
	margin-right:2px;
	padding:5px 3px 3px;
	padding-top:0;
	padding-bottom:0;
	font-size:14px
}
li.configmenu a, li.configmenu_selected a {
	text-decoration:none
}

/* ******** 7. TABLE */

/* generaly definition for all tables */
table {
	border-spacing:1px;
	margin-left:auto;
	margin-right:auto
}

/* Table in status.html */
table.status {
	width:100%;
	empty-cells:show
}

/* Tables for all part in CONFIGURATION item and in user_edit.html */
table.config {
	width:60%;
	margin-bottom:20px
}

/* Tables in readers.html */
table.readers {
	width:100%
}

/* Table in readerconfig.html */
table.configreader {
	width:850px
}

/* Table in readerstats.html */
table.statsbalance td:last-child {
	line-height:20px;
	width:125px
}
table.statsbalance td:last-child img.icon {
	float:right;
	margin-left:10px
}

/* Table in USERS in userconfig.html */
table.users {
	width:100%
}
table.ECM_totals {
	margin-bottom:20px
}
table.ECM_totals,
table.user_totals {
	width:50%
}

/* Tables in CACHEEX in cacheex.html */
table.cacheex, table#dataTable.stats {
	width:80%
}

/* Table in savetemplates.html 
 * OLD DESIGN FOR MENU IN savetemplates.html !!!
 */
table.menu {
	border-spacing:0
}

/* Table for settings in configuration of readers and users */
table.invisible {
	margin-left:0
}
table.invisible td { 
	font-size:12px
}
table.invisible td:first-child {
	padding-left:0
}

/* Table statusmeminfo	- in status_systeminfo.html
 * Table statususerinfo	- in status_userinfo.html
 * Table statuscacheexinfo	- in status_cacheexinfo.html
 */
table.statusmeminfo, table.statususerinfo, 
table.statuscacheexinfo {
	width:60%;
	white-space:no-wrap;
	margin-top:0px;
	margin-bottom:0px
}

/* Table cachexstats	- in cacheex.html */
table#cachexstats {
	width:60%;
	white-space:no-wrap;
	margin-bottom:0px
}

/* Table in services.html */
#addnewservice,#servicesedit {
	width:35%;
	text-align:center
}
#servicesedit td {
	text-align:center
}

/* Table in user_edit.html, readerconfig.html */
table.subservicetable {
	width:100%;
	background:#FFF
}

/* OTHER TABLES */

/* in emm.html, emm_running.html,
 * entitlements_bit.html, entitlements_cccambit.html
 * failban.html, 
 */
table.stats {}

/* ******** 8. TABLE TR */

/* for entitlement */
tr.e_valid td, tr.e_expired td, tr.e_header td {
	font-family:"Courier New", monospace
}

/* OTHER TR */

/* in readers_readerlist.html */
tr.enabledreader, tr.disabledreader {}

/* ******** 9. TABLE TH */

/* generaly definition for all TD */
th {
	height:10px;
	padding:5px
}

/* in status_cacheexinfo.html, status_systeminfo.html */
th.nameinfo {
	text-transform:uppercase;
	text-align:left
}

/* in STATUS item (FIND OUT MORE) */
th.statuscol0 {
	text-align:center;
	width:0
}
th.statuscol1, th.statuscol2, 
th.statuscol3, th.statuscol4, 
th.statuscol5, th.statuscol6, 
th.statuscol7, th.statuscol8, 
th.statuscol9, th.statuscol10, 
th.statuscol11, th.statuscol12, 
th.statuscol13, th.statuscol14, 
th.statuscol15, th.statuscol16 {
	text-align:center
}
th.statuscol15 {
	cursor:pointer
}

/* OTHER TABLEs TH */

/* in readerconfig.html */
th.withservices, th.notservices, th.lbservices {}

/* ******** 10. TABLE TD */

/* generaly definition for all TD */
td {
	height:10px;
	text-align:left;
	padding:5px
}

/* in readerstatsnotfound.html, readerstatstimeoutbit.html
 * status_clientheadlinebit.html, status_clientheadlinewith.html
 * status_pheadline.html, status_rheadline.html
 */ 
td.subheadline {
	height:10px;
	border:0;
	padding:5px
}

/* in status_clientheadlinebit.html, status_clientheadlinewith.html
 * status_pheadline.html, status_rheadline.html
 */
td.subheadline form select {
	width:100px;
	text-align:center;
	font-size:10px;
	padding:0
}

/* other settings for seubheadline */
td.subheadline a {
	text-decoration:none
}
td.subheadline p {
	text-align:left;
	font-weight:bold;
	margin-left:5px
}

/* FIND OUT MORE ?!?! */
td.statuscol0 {
	text-align:center;
	width:10px
}
td.statuscol1 {
	width:0
}
td.statuscol4, td.statuscol4 a,
td.statuscol9, td.statuscol9 a,
td.statuscol13, td.statuscol13 a,
td.usercol1, .span, span, span a {
	text-align:center;
	text-decoration:none
}
td.centered, td.statuscol1,
td.statuscol2, td.statuscol3,
td.statuscol5, td.statuscol6,
td.statuscol7, td.statuscol8,
td.statuscol10, td.statuscol11,
td.statuscol12, td.statuscol14,
td.statuscol15, td.statuscol16,
td.usercol0, td.usercol2,
td.usercol3, td.usercol4,
td.usercol5, td.usercol6,
td.usercol7, td.usercol8,
td.usercol9, td.usercol10,
td.usercol11, td.usercol12,
td.usercol13, td.usercol14,
td.usercol15, td.usercol16,
td.usercol17, td.usercol18,
td.usercol19, td.usercol20,
td.usercol21, td.usercol22,
td.usercol23, td.usercol24,
td.usercol25, td.readercol0,
td.readercol1,td.readercol2,
td.readercol3,td.readercol4,
td.readercol5,td.readercol6,
td.readercol7,td.readercol8,
td.readercol9,td.readercol10,
td.readercol11,td.readercol12,
td.readercol13,td.readercol14,
td.readercol15,td.readercol16,
td.readercol17 {
	text-align:center
}

td.statuscol14 a, td.statuscol16 a, td.subheadline a {
	text-decoration:none
}

/* in readerconfig_sidokbit.html */
td.servicescol1, td.servicescol2, td.servicescol3 {
	width:30%;
	border:0;
	border-spacing:1px
}

/* ******** 11. DIV */

/* in status.html, entitlements_genericbit.html */
div.log {
	font-family:"Courier New", monospace;
	text-align:left;
	margin:20px 0;
	padding:10px
}

/* in module-webif.c class for services.html */
div.sidlist {
	font-family:"Courier New", monospace;
	text-align:left;
	padding:2px
}
div.sidlistclose {
	float:right
}
div.sidlistclose a {
	text-decoration:none;
	padding:0 3px
}

/* in message.html */
div.message {
	font-size:12px;
	font-weight:700;
	margin:5px 0
}

/* FIND OUT MORE */
div.div_notifier {
	height:14px;
	width:14px;
	margin-left:4px;
	text-align:center;
	float:right
}

/* in file.html */
div.filterform {
	margin:10px
}

/* in pre_autoconf.html, pre_shutdown.html */
div.warning {
	margin:42px 0 14px
}

/* in logobit.html - Logo for Oscam */
div.logo {
	position:absolute;
	top:10px;
	left:10px;
	z-index:0
}

/* in READERS and USERS items */
div.groups {
	cursor:default;
	overflow:hidden;
	margin:0 auto;
	text-align:center;
	word-wrap:none;
	position:relative;
	width:40px
}

/* in footer.html */
div.footer {
	padding-bottom:5px;
	padding-top:5px;
	margin-bottom:0;
	margin-top:40px
}
div.footer p {
	margin:5px
}

/* in status.html, main DIV for statistics info */
div.info {
	max-width:1300px;
	margin:20px auto
}

/* debugmenu	- status_sdebug.html 
 * logmenu		- file.html
*/
div.debugmenu, div.logmenu {
	line-height:20px;
	margin-bottom:8px
}

/* in entitlements_cccambit.html */
div.cccamentitlementtotals,
div.cccamentitlementcontrols {
	margin-top:14px
}

/* definition only for show or hide columns or DIV
 * #newuser		- in userconfig.html
 * #newreader	- in readers.html
 * #exp, #cwc, #acasc - only in module-webif.c for show/hide columns in userconfig.html
 */
#newuser, #newreader,
.exp, .cwc, .acas, .grp,
.hidden {
	display:none
}

/* ******** 12. TEXTAREA,SELECT,INPUT */

/* texteditor in file.html */
textarea.editor {
	font-size:11px;
	width:98%;
	height:508px;
	font-family:"Courier New", monospace;
	text-align:left;
	padding:8px 10px
}

/* class for textarea */
textarea.bt {
	font-size:12px
}

/* generaly settings for all select */
select {
	padding:2px
}

/* settings for first option in select 
 * otherdropdown	- in script.html, menu.html
 */
#otherdropdown option:first-child {
    display:none
}

/* solution for align vertical checkbox with text */
input[type=checkbox] {
	vertical-align:text-bottom;
	_vertical-align:middle;
	margin-right:5px
}

/* ******** 13. IMAGE */

/* generaly settings for images */
img {
	border:0 solid
}

/* for icons with following Action */
img.icon {
	border-radius:4px;
	border:0 solid;
	width:22px;
	height:22px;
	max-height:22px
}

/* statususericon	- in STATUS item
 * protoicon		- in STATUS, READERS item
 * usericon			- in USERS item
 * readericon		- in READERS item
 */
img.statususericon, img.protoicon,
img.usericon, img.readericon {
	min-height:15px
}

/* logo IC_LOGO.tpl */
div.logo img {
	max-height:44px
}

td#out.centered img,
td#in.centered img {
	margin-bottom:-2px;
	margin-right:10px;
	margin-left: 10px
}

/* ******** 14. SPAN */

/* in module-webif.c and userconfig_notify.html */
span.span_notifier {
	margin-left:2px;
	padding:1px 3px
}

/* in module-webif.c value for STATUS item ( more info in Changeset 6668 by alno )
 * Class for formating values in statusview column "Idle" 
 * In new WebIf column Idle is not used. Info about Idle is in title */
span.idlesec_normal, span.idlesec_alert {
	font-size:9px
}

/* in readerconfig_cccambit.html, user_edit_anticasc.html and user_edit_cccam.html */
span.global_conf {
	font-size:12px;
	cursor:default;
	padding:4px
}

/* in entitlements.html, readerconfig.html and user_edit.html */
span.text_entitle {
	display:inline-block;
	font-weight:700
}

/* ******** 15. GRAPH */
text.graph_error {text-anchor:middle;}
text.graph_grid_txt {text-anchor:end;font-size:12px;}
path.graph_grid {stroke-opacity:0.5;}

/* ******** 17. SORTING IN TABLE */

/* Classes are for sorting  */
.users th {
	font-size:11px
}
.users .head, .sortable {
	background-image: url(data:image/png;base64,R0lGODlhBQAIAJEAAAAAAP///yMtMP///yH5BAEAAAMALAAAAAAFAAgAAAIL3GQnuJ2f2lLI1AIAOw==);
	background-repeat:no-repeat;
	background-position:4px center;
	cursor:pointer;
	padding-left:12px;
	padding-right:8px
}
.users .desc, .users .asc, .sorting-asc, .sorting-desc{
	background-color:#999
}
.users .desc, .sorting-desc{
	background-image: url(data:image/png;base64,R0lGODlhBQADAJEAAAAAAP///yMtMP///yH5BAEAAAMALAAAAAAFAAMAAAIFlD03K1sAOw==);
	background-repeat:no-repeat;
	background-position:4px center;
	cursor:pointer;
	padding-left:10px;
	padding-right:8px
}
.users .asc, .sorting-asc{
	background-image: url(data:image/png;base64,R0lGODlhBQADAJEAAAAAAP///yMtMP///yH5BAEAAAMALAAAAAAFAAMAAAIF3GQnuF0AOw==);
	background-repeat:no-repeat;
	background-position:4px center;
	cursor:pointer;
	padding-left:10px;
	padding-right:8px
}

/* ******** 18. OTHER SETTINGS */
/* margin top from previous table */
.margintop {
	margin-top:30px
}
.smallmargintop {
	margin-top:15px
}

/*  for UL in logpoll.html */
#livelog {
	resize:vertical;
	height:580px;
	max-width:1500px;
	overflow-y:auto;
	list-style:none;
	text-align:left;
	margin:5px auto 15px;
	border:1px dotted #AAA;
	background-color:#FAFAFA;
	color:#666;
	font-family: "Courier New",monospace
}
#livelogdata {
	list-style:none;
}
li.regex, li.regexdata_nav, li.regexdata_save{
	list-style-type:none;
	white-space:nowrap
}
input.regexinput {
	cursor:text;
	padding:2px;
	margin: 3px 15px 1px 3px;
	width:400px;
}
.regexdata_nav input {
	width:100px;
	margin-bottom:8px
}
.regexdata_save input {
	width:90px;
	margin-top:10px
}
div.colorPicker-picker {
	height: 16px;
	width: 16px;
	display: inline;
	margin: 3px;
	padding: 4px 8px;
	border: 1px solid #ccc;
	cursor: pointer;
	line-height: 16px;
	font-size:0.75em;
	font-weight:bold;
	text-align: center;
}

div.colorPicker-palette {
	width: 110px;
	position: absolute;
	border: 1px solid #598FEF;
	background-color: #EFEFEF;
	padding: 2px;
	z-index: 9999;
}
	div.colorPicker_hexWrap {width: 100%; float:left }
	div.colorPicker_hexWrap label {font-size: 95%; color: #2F2F2F; margin: 5px 2px; width: 25%}
	div.colorPicker_hexWrap input {margin: 5px 2px; padding: 0; font-size: 95%; border: 1px solid #000; width: 65%; }

div.colorPicker-swatch {
	height: 12px;
	width: 12px;
	border: 1px solid #000;
	margin: 2px;
	float: left;
	cursor: pointer;
	line-height: 12px;
}

/* User-Page polling */
#inc,#dec {
	padding:0 3px;
	margin: -3px 3px;
	border:none;
	background-color:#A00;
	color:#FFF;
	border-radius:4px;
	font-size:14px;
	font-weight:700;
	width: 22px;
	height: 22px;
}
#inc:hover,#dec:hover {
	background-color:red;
}
li.pollselect {
	display:inline;
	list-style:none;
	position: absolute;
	right: 10px;
}
input.pintervall {
	font-size:14px;
	font-weight:500;
	width:18px;
	height:18px;
	color:#000;
	background-color:transparent;
	border:none;
	border-radius:4px;
	text-align:right;
	margin: 0 4px;
}

/* polling heartbeat */
#picolor {
	background-color:#A00; 
}


/* ================================= COLORS ================================= */
/* BASIC SETTINGS */

body {
	background-color:#FFF;
	color:#000
}
p.text-large-red {
	color:red
}
h2, h4 {
	color:#AAA
}

/* LINKS */
a.debugls:link, a.debugls:visited {
	background-color:#A00;
	color:#FFF
}
a:hover {
	color:#FF9E5F
}
a:hover img.icon {
	background:red
}
a:hover span {
	background:#FFC;
	border:1px solid #000
}
a:link, a:visited, a:active {
	color:#050840
}
#savelog {
	text-decoration:none
}
/* MAIN MENU & SUBNAV*/
#mainmenu, #nav {
	background-color:#FFF
}
li.menu:hover, li.menu_selected, 
li.configmenu:hover, li.configmenu_selected {
	background-color:#DDD
}

/* TABLE */
table.status {
	background-color:#FFF
}

/* TABLE TR */
tr.online td.usercol6 {background-color:#949494;color:#FFF}
tr.online td {background-color:#BFA}
tr.offline td {}
tr.expired td {background-color:#FBA}
tr.connected td {background-color:#FFA}
tr.disabled td {}

tr.disabled td:first-child img.icon,
tr.disabledreader td:first-child img.icon {
	background-color:#0A0
}

tr.enabledreader {}
tr.disabledreader {}

tr.a td {background-color:#3F0}
tr.c td {background-color:#F1F5E6}
tr.e_valid td {background-color:#E6FEBF}
tr.e_expired td {background-color:#FFF3E7}

tr.s td, 
tr.l td,
tr.n td,
tr.h td {
	background-color:#E1E1EF
}

tr.r td, span.e_expired {background-color:#FFF3E7}
tr.p td, tr.scanusbsubhead td {background-color:#FDFBE1}

/* TABLE TH */
th {
	background-color:#CCC
}
th.nameinfo {
	background-color:#999
}

/* TABLE TD */
td {
	background-color:#EEE
}
td.subheadline {
	background-color:#CCC
}

/* DIV */

/* in entitlements_genericbit.html */
div.log {
	border:1px dotted #AAA;
	background-color:#FAFAFA;
	color:#666
}
div.sidlist {
	border:1px dotted #AAA;
	background-color:#FFFDF5;
	color:#666
}
div.sidlistclose {
	background-color:red;
	color:#FFF
}
div.sidlistclose a {
	color:#FFF
}
div.footer {
	background-color:#EEE;
	border-top:3px solid #CCC
}

/* TEXTAREA */
textarea.editor {
	border:1px dotted #AAA;
	background-color:#FAFAFA;
	color:#000
}

/* IMAGE */
img.icon {
	background-color:#A00
}

/* SPAN */
span.e_valid {
	background-color:#E6FEBF
}
span.span_notifier {
	color:#FFF;background:red
}
span.idlesec_normal {}
span.idlesec_alert {
	color:red
}
span.global_conf {
	color:blue
}

/* GRAPH */
rect.graph_bg {fill:white;}
text.graph_error {fill:red;}
text.graph_grid_txt {fill:gray;}
path.graph_grid {stroke:gray;}

#chart {
	position:absolute;
	width: 150px;
	height: 90px;
	border: 1px dotted #ff0000;
	background-color: #eaeaea;
	padding:3px;	
}
#charthead {
	background-color: transparent;
	width:100%;
	height:5px;
	font-size:3;
}
#graph {
	width:98%;
	bottom:0;
	position:absolute;
}
div.bar {
	width: 5px;
	margin: 2px;
	display: inline-block;
	position: relative;
	background-color: #aeaeae;
	vertical-align: baseline;
}
.disabledtable {
    opacity: 0.5;
}