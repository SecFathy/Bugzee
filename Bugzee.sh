#!/bin/bash
# Bug Hunter 101 Tools
# Developed By SecFathy

# Check Root Pravilage


#!/bin/bash
if [[ $EUID -ne 0 ]]; then
  echo "You must be a root user" 2>&1
  exit 1
else
  mount /dev/sdb1 /mnt/disk2
fi


echo '''

  ____
 |  _ \
 | |_) |_   _  __ _ _______  ___
 |  _ <| | | |/ _` |_  / _ \/ _ \
 | |_) | |_| | (_| |/ /  __/  __/
 |____/ \__,_|\__, /___\___|\___|
               __/ |
              |___/

    This Tool Developed For Web Application Bug Hunters
    Developed By SecFathy @Sirmatrixpage
'''


printf "\x1b[32m ---> [ Update Your Linux Distro ]\\x1b[0m\n";
apt-get update
apt-get upgrade

printf "\x1b[32m ---> [ Install Requirements  ]\\x1b[0m\n";
sudo apt-get install -y git
apt-get install python-pip
sudo apt-get install -y python3-pip
sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y jq
sudo apt-get install -y ruby-full
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev

printf "\x1b[32m ---> [ Install SSL Testing Tools   ]\\x1b[0m\n";

git clone https://github.com/hahwul/a2sv.git

printf "\x1b[32m ---> [ Install Port Scan   ]\\x1b[0m\n";

apt-get install nmap
git clone https://github.com/robertdavidgraham/masscan

printf "\x1b[32m ---> [ Install DNS Discovery & Sub-domain   ]\\x1b[0m\n";

git clone https://github.com/aboul3la/Sublist3r.git
git clone https://github.com/guelfoweb/knock.git


printf "\x1b[32m ---> [ Subdomain Takeover   ]\\x1b[0m\n";

git clone https://github.com/haccer/subjack.git
git clone https://github.com/michenriksen/aquatone.git


printf "\x1b[32m ---> [ Discovery Directory   ]\\x1b[0m\n";

git clone https://github.com/maurosoria/dirsearch.git

printf "\x1b[32m ---> [ Fingerprinting Tools    ]\\x1b[0m\n";

git clone https://github.com/urbanadventurer/whatweb.git
git clone https://github.com/EnableSecurity/wafw00f.git

printf "\x1b[32m ---> [ Web Application vulnerability Scanner   ]\\x1b[0m\n";

git clone https://github.com/sqlmapproject/sqlmap.git
git clone https://github.com/epinna/tplmap.git
git clone https://github.com/D35m0nd142/LFISuite.git
git clone https://github.com/insp3ctre/race-the-web.git
git clone https://github.com/wpscanteam/wpscan.git
git clone https://github.com/rezasp/joomscan.git
git clone https://github.com/Dionach/CMSmap.git
git clone https://github.com/internetwache/GitTools.git
