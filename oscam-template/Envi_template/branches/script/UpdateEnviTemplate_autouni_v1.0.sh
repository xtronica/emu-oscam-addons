#!/bin/sh
#
# Automatic script for find folder and downloaded file
#
# This script will be it tested on:
#	Vu+ Solo, i686 (Xubuntu), x86_64, .....
#
# NOTES: Dont use \n for new line. \n dont works on enigma 2

# USER SETUP ###############################################
# Set manually downloaded file

TrunkUrl="http://www.streamboard.tv/svn/oscam-addons/oscam-template/Envi_template/branches/compressed_files/"
TrunkFile='Envi_Template.zip'

# END USER SETUP ###########################################

# FUNCTIONS ************************************************
die() {
  msg=$1
  [ -z "$msg" ] && msg="Unknown Error!"
  echo "$msg"
  exit 1
}

# UPDATE ***************************************************
# Detecting operating system and CPU type
MachineHardwareName=$(uname -m)

# Find PATH with config files
	# Find file oscam.version which contains path with config files
	FindPath=$(find / -name "oscam.version" -print | xargs |sed -r 's/.{14}$//' )
	
		# Validate FindPath
		[ ! -d "$FindPath" ] && die "Directory FindPath \"$FindPath\" not found!"
	
	# Find path with config files
	ConfigPath=$(grep -r ConfigDir $FindPath/oscam.version | cut -d':' -f2 | xargs)
	ConfigPath=$(echo "$ConfigPath" |sed 's/.$//')

		# Validate ConfigPath
		[ ! -d "$ConfigPath" ] && die "Directory ConfigPath \"$ConfigPath\" not found!"

	# Print to display
	echo "Found path with oscam.version: "$FindPath
	echo "Found folder with oscam.conf: "$ConfigPath

# Find setting for oscam httptpl folder in file oscam.conf 
OscamTplFolder=$(grep -r httptpl $ConfigPath/oscam.conf | cut -d= -f2 | xargs)

	# Validate OscamTplFolder
	[ ! -d "$OscamTplFolder" ] && die "Directory OscamTplFolder \"$OscamTplFolder\" not found!"

# Go to TPL folder
cd $OscamTplFolder

# Remove the previous downloaded file
[ -f "$TrunkFile" ] && rm -f "$TrunkFile"

# Download new files
url(){
	if [ ! -z "$1" ]; then
		wget -q --no-check-certificate "$1"
		[ "$?" -eq 0 ] && echo "Check Url: $1 exists..." || echo "Check Url: $1 doesn't exists.."
	else
		echo "No Arguments..exiting" & exit
	fi
}

url "$TrunkUrl/$TrunkFile"

# Print to display
echo ""
echo "START SCRIPT TO DOWNLOAD THE FILE"
echo "---------------------------------"
echo ""
echo "Machine hardware name: "$MachineHardwareName
echo "Config path: "$ConfigPath
echo "Oscam template folder: "$OscamTplFolder

tmpfile=$(echo "$OscamTplFolder" |sed 's/.$//')
file="$tmpfile/Envi_Template.zip"
if [ -f "$file" ]
then
	echo "Downloaded file: $file was successfully downloaded"
else
	echo "Downloaded file: $file was not downloaded!!!"
	exit 0
fi

# Remove the previous files
[ -f CSS.tpl ] && rm -f CSS.tpl
[ -f FOOTER.tpl ] && rm -f FOOTER.tpl
[ -f HEADERSHORT.tpl ] && rm -f HEADERSHORT.tpl
[ -f info.txt ] && rm -f info.txt

# Print to display
echo ""
echo "Old template files have been deleted"
echo ""
echo "Decompressed files:"

#  Decompression
unzip "$TrunkFile"

# Print to display info about Envi
InfoRevision=$(grep -r Revision $OscamTplFolder/info.txt | cut -d':' -f2 | xargs)
InfoAuthors=$(grep -r Authors $OscamTplFolder/info.txt | cut -d':' -f2 | xargs)
InfoDate=$(grep -r Date $OscamTplFolder/info.txt | cut -d':' -f2 | xargs)

echo ""
echo "INFO ABOUT ENVI"
echo "---------------"
echo "Envi Revision: $InfoRevision"
echo "Authors: $InfoAuthors"
echo "Last Changed Date: $InfoDate"

#  Remove a compressed file
rm -if "$TrunkFile" || die "Could not remove $TrunkFile!"

# Done all OK
exit 0