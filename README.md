Siri Proxy to control LED with Raspberry Pi
==========

About
-----
For Siri Proxy, please refer here:https://github.com/plamoni/SiriProxy

However, there already have an os image installed siri on it. you can download it here:

http://sourceforge.net/projects/siriproxyrpi/

for Webiopi,please refer here:https://code.google.com/p/webiopi/wiki/INSTALL



Install steps
--------------------

**Install siriproxy os on your Pi On MacOS**

1. open your terminal,type: df -h ,find your SD card identifier,for example,mine is:/dev/disk2s1
2. please cd your siriproxy os directory,type:sudo diskutil unmount /dev/disk2s1
3. type:sudo dd bs=1m if=siriproxy_os.img of=/dev/rdisk2   please note that you must modify /dev/disk2s1 to /dev/rdisk2 
4. wait about 20 minutes until the written was done. Then plus your sd card to your Pi, the login username & password is: root&siriproxy


**Install webiopi os on your Pi On MacOS**

1. follow the instructions on https://code.google.com/p/webiopi/wiki/INSTALL
2. once install done, type: sudo python -m webiopi
3. open your browser,type:http://raspberrypi_ipaddress:8000/,you will see the GPIO webpages



**test siriproxy on your iPhone(mine is iPhone4s)**

1. cause my iPhone already jailbreaken. we could directly edit the hosts file in /etc/hosts on iPhone. please add this string in this file:

   RaspberyPi_IPAdress  guzzoni.apple.com    , for example: 192.168.226.171 guzzoni.apple.com

2. back to your iPhone, in the WIFI Settings, DNS item: delete all origin DNS IPs, then add your RaspberyPi_IPAdress

3. back to RaspberryPi, in terminal type: siriproxy server -d RaspberyPi_IPAdress

4. back to iPhone, open Siri, say"Test Siri proxy " Siri will response "Siri Proxy is up and running!"



**install  siriproxy plugin on Pi**

1. mkdir ~/plugin

2. git clone git@github.com:shuhongwu/controlLEDwithRaspberryPi.git on your Pi

3. cp controlLEDwithRaspberryPi /usr/local/rvm/gems/ruby-2.0.0-p0/gems/siriproxy-0.5.2/plugins/

4. cp /usr/local/rvm/gems/ruby-2.0.0-p0/gems/siriproxy-0.5.2/config.example.yml ~/.siriproxy/config.yml

5. nano ~/siriproxy/config.yml , add 
   
      - name: 'Example1'
      path: './plugins/siriproxy-example1'

6. siriproxy bundle

7. siriproxy server -d RaspberyPi_IPAdress








**Acknowledgements**

Free,totally~~~
