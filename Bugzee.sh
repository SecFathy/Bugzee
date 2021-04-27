#!/bin/bash
# Bug Hunter 101 Tools
# Developed By SecFathy

# Check Root Privileges
if [[ $EUID -ne 0 ]];
then
    echo
    echo "                       Hi $USER"
    echo
    echo "          Type Your sudo password To using Script  "
    echo
    exec sudo /bin/bash "$0" "$@"
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

###### To update any Linux Distro
######################################################################################################################################################
declare -A osInfo;
osInfo[/etc/debian_version]="sudo apt-get update -y && sudo apt-get upgrade -y"
osInfo[/etc/alpine-release]="sudo apk update"
osInfo[/etc/centos-release]="sudo yum update && sudo yum upgrade"
osInfo[/etc/fedora-release]="sudo dnf update && sudo dnf upgrade"
osInfo[/etc/arch-release]="sudo pacman -Syu"
osInfo[/etc/manjaro-release]="sudo pacman -Syu"
for f in ${!osInfo[@]}
do
    if [[ -f $f ]];then
        SYSUPDATE=${osInfo[$f]}
    fi
done

printf "\x1b[32m ---> [ Update Your Linux Distro ]\\x1b[0m\n";
${SYSUPDATE}

#########./
###### To install Tools in any Linux Distro
##############################################################################
declare -A osInfo;
osInfo[/etc/debian_version]="sudo apt-get install -y"
osInfo[/etc/alpine-release]="sudo apk --update add"
osInfo[/etc/centos-release]="sudo yum install -y"
osInfo[/etc/fedora-release]="sudo dnf install -y"
osInfo[/etc/arch-release]="sudo pacman -S"
osInfo[/etc/manjaro-release]="sudo pacman -S"
for f in ${!osInfo[@]}
do
    if [[ -f $f ]];then
        package_manager=${osInfo[$f]}
    fi
done


printf "\x1b[32m ---> [ Install Requirements  ]\\x1b[0m\n";
package="git python-pip python3-pip libcurl4-openssl-dev libssl-dev jq ruby-full libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev"
${package_manager} ${package}

####################./
printf "\x1b[32m ---> [ Install SSL Testing Tools   ]\\x1b[0m\n";

git clone https://github.com/hahwul/a2sv.git
cd a2sv
pip install -r requirements.txt
cd ..

printf "\x1b[32m ---> [ Install Port Scan   ]\\x1b[0m\n";
${package_manager} nmap
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
git clone https://github.com/daudmalik06/ReconCat.git

printf "\x1b[32m ---> [ Web Application vulnerability Scanner   ]\\x1b[0m\n";

git clone https://github.com/sqlmapproject/sqlmap.git
git clone https://github.com/epinna/tplmap.git
git clone https://github.com/D35m0nd142/LFISuite.git
git clone https://github.com/insp3ctre/race-the-web.git
git clone https://github.com/wpscanteam/wpscan.git
git clone https://github.com/rezasp/joomscan.git
git clone https://github.com/Dionach/CMSmap.git
git clone https://github.com/internetwache/GitTools.git
git clone https://github.com/epinna/weevely3.git
