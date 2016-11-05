![alt tag](http://designerdrug.de/public/Up&Run.png "Up and Run for Mac OS X")

[![Twitter: @designerdrug](https://img.shields.io/badge/contact-@designerdrug-blue.svg?style=flat-square)](https://twitter.com/designerdrug)
[![license](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square)](https://opensource.org/licenses/MIT)

## WHAT IS Up&Run
You are an Administrator and you get new MacBooks? All Macs should have the same applications and settings?
Just use Up&Run and use your time more effectively.


## BACKGROUND
Up&Run is a helper to automate the setup of your Mac. I'm using it to give me more time for more exciting stuff. Up&Run is basically just a bit Bash and **[Ansible](http://www.ansible.com/)**. 
It works, but it is still under development and is just tested under Mac OS X El Capitan, Yosemite and macOS Sierra.

Up&Run is doing...

* installing Applications via Caskroom [http://caskroom.io/](http://caskroom.io/)
* installing Brews [http://brew.sh/](http://brew.sh/)
* changing Mac OS X settings like reduce transparency or change Dock icon size


## INSTRUCTIONS
Edit **settings/apps.yml** and **settings/tools.yml** in a way that only your required applications 
and tools are listed. Check http://caskroom.io/search to find more applications you need.

You can also create new User accounts by updating **settings/users.yml**.

Just run **./run.sh** in your Terminal and lean back. Coffee time.


## LICENSE
The Up&Run is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).


## THANK YOU
Don’t hesitate to drop me some lines. Ping me on Twitter **[@designerdrug](https://twitter.com/designerdrug)** and 
follow my tweets about my development and design stuff. 
