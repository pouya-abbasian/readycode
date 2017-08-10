#!/bin/bash
## $1 is filename!
## $2 is LangName
dir=`type -P $2`
shebang_dir="#!$dir"
if [ "$1" ] ; then ##Check Argument
	if [ -f "$1" ] ; then ##Check File Avalibale or not!
		read -p "This file is avalibale. Would you like to replace it? [Y/n]" q
		if [ $q=="y" ] ; then
			echo -e "$shebang_dir\n" > "$1" ; chmod +x "$1"
		elif [ $q=="Y" ] ; then
			echo -e "$shebang_dir\n" > "$1" ; chmod +x "$1"
		else
			echo -e "Abort!\nByeBye"
			exit
	
		fi
	else
		echo -e "$shebang_dir\n" > "$1" ; chmod +x "$1"
	fi

else
	echo "rcode: missing file operand"
	exit
fi ##close Check Argument
