#!/bin/bash
xcode-select --install # install xcode commandline tools

read -r -p "Xcode installed? Ready to start Up&Run [y/N] " response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
then
    echo 'UpAndRun | Install Homebrew'
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 

    echo 'UpAndRun | Update Homebrew'
	brew update	
	
	echo 'UpAndRun | Install Ansible'
	brew install ansible 
	
	echo 'UpAndRun | Run Ansible Playbook'
	
fi
exit;
