#!/bin/bash

if [[ `xcode-select --install 2>&1 | grep installed` ]]
then
	echo 'Up&Run | Xcode already installed'
	read -r -p "Ready to start Up&Run [y/N] " response
	if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
	then
	    if ! [[ `which brew` ]]; then
	    	echo 'Up&Run | Install Homebrew'
	    	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 
	    	
	    	echo 'Up&Run | Updating Homebrew...'
			brew update	&> /dev/null
			brew tap caskroom/versions &> /dev/null
	    fi
	
	    if [[ `which brew` ]]; then
			if ! [[ `brew ls --versions ansible` ]]; then
				echo 'Up&Run | Installing Ansible...'
				brew install ansible &> /dev/null
			fi
		fi
	
	    if [[ `which ansible-playbook` ]]; then
			echo 'Up&Run | Run Ansible Playbook'
			ansible-playbook -i Up&Run/hosts Up&Run/playbook.yml
		fi
	fi
else
	echo 'Up&Run | Please install Xcode and try again.'
fi
exit;
