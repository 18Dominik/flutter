setting up flutter on gitpod
#Manual Commands
 #Install Xvfb if you didn't install it yet and do the following steps
 - RUN sudo apt-get install -y xvfb
 
 #Dependencies to make "headless" chrome/selenium work. Here, you will be asked to specify the keyboard setting upon running the command
 - RUN sudo apt-get -y install xorg xvfb gtk2-engines-pixbuf
 - RUN sudo apt-get -y install dbus-x11 xfonts-base xfonts-100dpi xfonts-75dpi xfonts-cyrillic xfonts-scalable
 
 #Set DISPLAY variable
 - RUN Xvfb -ac :99 -screen 0 1280x1024x16 &
       export DISPLAY=:99
 
 # Create Flutter App
 - RUN flutter create my_app
 - RUN cd my_app
 # Run flutter app in release mode
 RUN flutter run -d chrome --release
