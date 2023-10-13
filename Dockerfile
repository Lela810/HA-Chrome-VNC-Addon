FROM siomiz/chrome:latest

EXPOSE 5900

ENV VNC_SCREEN_SIZE=1024x768
ENV CHROME_OPTS_OVERRIDE="--kiosk --user-data-dir --no-sandbox --window-position=0,0 --force-device-scale-factor=1 --disable-dev-shm-usage --simulate-outdated-no-au='Tue, 31 Dec 2099 23:59:59 GMT'"
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

ENTRYPOINT [ "/bin/bash /entrypoint.sh" ]
CMD [ "/usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf" ]