#!/bin/sh
# Author: TylerArnett
# Abstract: 	This script downloads the trex miner and sets up a run
#				script with a specific wallet address, rig id, and pool.

mkdir ~/Downloads
rm -rf ~/CryptoMining
mkdir ~/CryptoMining
cd ~/Downloads
rm -rf t-rex-0.24.7-linux.tar.*
rm -rf lolMiner_v1.38_Lin64.tar.*
#wget https://github.com/trexminer/T-Rex/releases/download/0.24.7/t-rex-0.24.7-linux.tar.gz
wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.38/lolMiner_v1.38_Lin64.tar.gz
#tar -xzvf t-rex-0.24.7-linux.tar.gz -C ~/CryptoMining/
tar -xzvf lolMiner_v1.38_Lin64.tar.gz -C ~/CryptoMining/
cd ~/CryptoMining
rm -rf ~/CryptoMining/*.sh
#echo "#!/bin/sh
#./t-rex/t-rex -a ethash -o stratum+tcp://us-eth.2miners.com:2020 -u 0xd6a25E9140905a5b024b85B76ac7A996A565b9c5 -p x -w rig1" > ./ETH-2miners.sh
echo "#!/bin/sh
~/CryptoMining/1.38/lolMiner --algo ETHASH --pool eth.2miners.com:2020 --user 0xd6a25E9140905a5b024b85B76ac7A996A565b9c5.rig1" > ./ETH-2miners.sh
