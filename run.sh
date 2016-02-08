#!/bin/bash
if xcode-select --install 2>&1 | grep installed
then
	echo 'Up&Run | Xcode already installed'
else
	echo 'Up&Run | Install Xcode'
fi

read -r -p "Xcode installed? Ready to start Up&Run [y/N] " response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
then
    if ! [ `which brew` ]; then
    	echo 'Up&Run | Install Homebrew'
    	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 
    fi

    if [ `which brew` ]; then
    	echo 'Up&Run | Updating Homebrew...'
		#brew update	&> /dev/null
		brew tap caskroom/versions &> /dev/null
 	
		if ! [ `brew ls --versions ansible` ]; then
			echo 'Up&Run | Installing Ansible...'
			brew install ansible &> /dev/null
		fi
	fi

    if [ `which ansible-playbook` ]; then
		echo 'Up&Run | Run Ansible Playbook'
		ansible-playbook -i upandrun/hosts upandrun/playbook.yml
	fi
fi
exit;
