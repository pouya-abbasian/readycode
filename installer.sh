#!/bin/bash
##Installer for ReadyCode
install(){
	chmod +x rcode
	sudo cp rcode /bin
	sudo chmod 755 /bin/rcode
}
check_install() 
{ 
	if [ "$?" != "0" ]; then
		echo "Installartion ERROR!!!"
	else
		echo "Installed Successfully!!!"
	fi
}
install
check_install
