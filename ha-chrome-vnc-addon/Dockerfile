FROM desktopcontainers/base-alpine:latest

RUN apk update
RUN apk upgrade
RUN apk add chromium
COPY haproxy.cfg /container/config/haproxy/haproxy.cfg
#RUN apk add libxcvt
ENV ENABLE_KIOSK=enable
ENV ENABLE_SUDO=enable
ENV VNC_SCREEN_DEPTH=16
ENV VNC_SCREEN_RESOLUTION=1024x768
RUN echo "chromium-browser 'https://homeassistant.local.lklaus.ch' --kiosk --no-sandbox --start-fullscreen" >> /container/scripts/app
#EXPOSE 5900
#ENV DEBIAN_FRONTEND noninteractive

# Install Chromium.

#USER root

#VOLUME /data

# Define working directory.
#WORKDIR /data

# Define default command.

#ENV CHROME_OPTS_OVERRIDE="--kiosk --user-data-dir --no-sandbox --window-position=0,0 --force-device-scale-factor=1 --disable-dev-shm-usage --simulate-outdated-no-au='Tue, 31 Dec 2099 23:59:59 GMT'"
#ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
#RUN mkdir -p /home/ubuntu/.config/autostart
#RUN echo '[Desktop Entry] \nType=Application \nExec=firefox --kiosk homeassistant.local.lklaus.ch \nHidden=false \nX-GNOME-Autostart-enabled=true \nName=firefox \nComment=firefox' >> /home/ubuntu/.config/autostart/firefox.desktop
#RUN mkdir -p /home/ubuntu/.vnc
#RUN x11vnc -storepasswd 31Yxcvbnm /home/ubuntu/.vnc/passwd0
#RUN chmod 777 /home/ubuntu/.vnc/passwd0

#EXPOSE 5900 4900

#ENTRYPOINT ["/bin/sh"] 
#ENTRYPOINT ["firefox", "--kiosk homeassistant.local.lklaus.ch"]
#CMD ["firefox" "--kiosk homeassistant.local.lklaus.ch"]
#docker buildx build --platform linux/arm64 --tag lela810/ha-chrome-vnc-addon:latest --load .
#docker buildx build --platform linux/amd64 --tag lela810/ha-chrome-vnc-addon:latest --load .
#docker buildx build --platform linux/amd64,linux/arm64 --tag lela810/ha-chrome-vnc-addon:latest --push .