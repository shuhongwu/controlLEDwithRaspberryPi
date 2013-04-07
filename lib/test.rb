require 'net/http'
require 'uri'

#postData = Net::HTTP.post_form(URI.parse('http://192.168.1.117:8000/GPIO/23/value/1'), {'postKey'=>'postValue'})
 
#puts postData.body





require 'socket'


LOCAL_IP = `ifconfig eth0`.match(/inet addr:(\d*\.\d*\.\d*\.\d*)/)[1] || "localhost"

value = "http://#{LOCAL_IP}:8000/GPIO/23/value/0"

print value


