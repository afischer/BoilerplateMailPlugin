# BoilerplateMailPlugin

A boilerplate mail plugin for Apple's Mail.app using the undocumented bundle APIs. 
Works with 10.12.4 (Sierra), untested elsewhere.

## Installing the Bundle
Simply build from xCode (<kbd>⌘+B</kbd>) and the bundle will be installed 
to <samp>~/Library/Mail/Bundles/</samp>. See the script in Build Phases for more information.

After building, open or restart Mail.app. You should get an alert letting you know it's working.

## Thanks
[Jeevanandam M.'s ReplyWithHeader](https://github.com/jeevatkm/ReplyWithHeader) as well as his
[older writeup](https://myjeeva.com/mail-app-plugin-development.html) was helpful to get this
working on Sierra.
