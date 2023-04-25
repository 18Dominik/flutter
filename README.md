setting up flutter on gitpod
#Manual Commands
 #Install Xvfb if you didn't install it yet and do the following steps
 - RUN sudo apt-get install -y xvfb
 
 #Dependencies to make "headless" chrome/selenium work:
 - RUN sudo apt-get -y install xorg xvfb gtk2-engines-pixbuf
 - RUN sudo apt-get -y install dbus-x11 xfonts-base xfonts-100dpi xfonts-75dpi xfonts-cyrillic xfonts-scalable
 
 #Set DISPLAY variable
 - RUN export DISPLAY=:99
 
 # Create Flutter App
 - RUN flutter create my_app
 - RUN cd my_app
 # Run flutter app in release mode
 RUN flutter run -d chrome --release
