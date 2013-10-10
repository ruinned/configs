#!/bin/sh
#

# check return value
check_status() {
	ret=$?
	if [ "$ret" -ne "0" ]; then
		echo "Failed setup, aborting..."
		exit 1
	fi
}


cwd=`dirname $0`

cmd="sudo apt-get install vim vim-doc git git-doc ctags cscope minicom adobe-flashplugin"

echo "---------------------------------------------------------------"
echo "The following command will help you to install the necessary"
echo "packages for Ubuntu environment:"
echo
echo "$cmd"
echo
echo "Note! The following step requires you to have administrator"
echo "priviliges (sudo access) on your host."
read -p "Press return to continue" REPLY

echo
$cmd
check_status
echo
echo "Packages installation successfully completed."
echo "---------------------------------------------------------------"
echo
