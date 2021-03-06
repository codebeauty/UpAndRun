![alt tag](http://designerdrug.de/public/upandrun.png "Up and Run for macOS")

[![Twitter: @designerdrug](https://img.shields.io/badge/contact-@designerdrug-blue.svg?style=flat-square)](https://twitter.com/designerdrug)
[![license](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square)](https://opensource.org/licenses/MIT)

## WHAT IS Up&Run
You are an Administrator and you get new MacBooks? All Macs should have the same applications and settings?
Just use Up&Run and use your time more effectively.

## BACKGROUND
Up&Run is a helper to automate the setup of your Mac. I'm using it to give me more time for more exciting stuff. Up&Run is basically just a bit Bash and **[Ansible](http://www.ansible.com/)**. 
Just tested under Yosemite and macOS Sierra.

Up&Run is doing...

* installing Applications via Caskroom [http://caskroom.io/](http://caskroom.io/)
* installing Brews via Homebrew
* can install Apps from Apple App Store via [MAS-CLI](https://github.com/mas-cli/mas) 
* changing Mac OS X settings like reduce transparency or change Dock icon size

## INSTRUCTIONS
Edit 
* **settings/apps.yml** for your Apps via Caskroom
* **settings/tools.yml** for your Tools via Brew
* **settings/appstore.yml** for your Apple App Store Apps

Check [http://caskroom.io/search](http://caskroom.io/search) to find more applications you need.

Just run **./run.sh** in your Terminal and lean back. Coffee or Whiskey time.

## THANK YOU
Don’t hesitate to drop me some lines. Ping me on Twitter **[@designerdrug](https://twitter.com/designerdrug)** and 
follow my tweets about my development and design stuff. 

## Bugs & Security Vulnerabilities
If you discover a bug or security vulnerability within Up&Run, please send an email to 
Mathias Bachmann at **[bug@designerdrug.net](mailto:bug@designerdrug.net)**.

## LICENSE
The Up&Run is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).