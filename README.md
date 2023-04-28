# Manual Commands for setting up flutter on gitpod
You may refer to https://stackoverflow.com/questions/60304251/unable-to-open-x-display-when-trying-to-run-google-chrome-on-centos-rhel-7-5
 ## Install Xvfb if you didn't install it yet and do the following steps
 https://www.x.org/releases/X11R7.6/doc/man/man1/Xvfb.1.xhtml
 - `sudo apt-get install -y xvfb`
 
 ## Dependencies to make "headless" chrome/selenium work
 Here, you will be asked to specify the keyboard setting upon running the command
 - `sudo apt-get -y install xorg xvfb gtk2-engines-pixbuf`
 - `sudo apt-get -y install dbus-x11 xfonts-base xfonts-100dpi xfonts-75dpi xfonts-cyrillic xfonts-scalable`
 
 ## Make sure that Xvfb starts every time the box/vm is booted and Set DISPLAY variable
 - `Xvfb -ac :99 -screen 0 1280x1024x16 &`
 - `export DISPLAY=:99`
 
 ## Create Flutter App
 You may refer to https://docs.flutter.dev/development/platform-integration/web/building
 - `flutter create my_app`
 - `cd my_app`
 ## Run flutter app in release mode
 You may refer to: https://stackoverflow.com/questions/59874808/finished-with-error-failed-to-establish-connection-with-the-application-instanc
 
 App runs on port 40811
 - `flutter run -d chrome --release`
