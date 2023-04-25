# Manual Commands for setting up flutter on gitpod
You may refer to https://stackoverflow.com/questions/60304251/unable-to-open-x-display-when-trying-to-run-google-chrome-on-centos-rhel-7-5
 ## Install Xvfb if you didn't install it yet and do the following steps
 - RUN sudo apt-get install -y xvfb
 
 ## Dependencies to make "headless" chrome/selenium work
 Here, you will be asked to specify the keyboard setting upon running the command
 - RUN sudo apt-get -y install xorg xvfb gtk2-engines-pixbuf
 - RUN sudo apt-get -y install dbus-x11 xfonts-base xfonts-100dpi xfonts-75dpi xfonts-cyrillic xfonts-scalable
 
 ## Make sure that Xvfb starts every time the box/vm is booted and Set DISPLAY variable
 - RUN Xvfb -ac :99 -screen 0 1280x1024x16 &
       export DISPLAY=:99
 
 ## Create Flutter App
 You may refer to https://docs.flutter.dev/development/platform-integration/web/building
 - RUN flutter create my_app
 - RUN cd my_app
 ## Run flutter app in release mode
 You may refer to: https://stackoverflow.com/questions/59874808/finished-with-error-failed-to-establish-connection-with-the-application-instanc
 - RUN flutter run -d chrome --release
