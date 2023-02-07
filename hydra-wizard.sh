#!/bin/sh
#
# based on a script by Shivang Desai <jackfire911github@gmail.com>
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
Purple="\033[0;35m"
Cyan="\033[0;36m"
Cafe="\033[0;33m"
Fiuscha="\033[0;35m"
blue="\033[1;34m"
nc="\e[0m"
#
clear
cat logo.txt | lolcat
echo
echo "JACK-FIRE Face On Hx Bunny" | lolcat
echo "Welcome to the Hydra Wizard" | lolcat 
echo "$red   If you face any error. So , Contact to  Hx Bunny "
echo "$Purple  Email$white:$green  jackfire911github@gmail.com"
echo "$Fiuscha  Instagram:$Cyan  Jackfire911"
echo  "$red  Press CTRL + C TO Exit "
echo
PS1='\033[1;31mHｘㅤ×͜×ㅤBｕｎｎｙ\033[1;94m[\033[1;96m\W\033[1;94m]\033[1;92m:\033[1;91m# \033[1;92m' read -p 'Enter the service to attack (eg: ftp, ssh, http-post-form):' service
test -z "$service" && { echo Error: service may not be empty ; exit 1 ; }
read -p "Enter the target to attack (or filename with targets): " target
test -z "$target" && { echo Error: target may not be empty ; exit 1 ; }
read -p "Enter a username to test or a filename: " user
test -z "$user" && { echo Error: user may not be empty ; exit 1 ; }
read -p "Enter a password to test or a filename: " pass
test -z "$pass" && { echo Error: pass may not be empty ; exit 1 ; }
read -p "If you want to test for passwords (s)ame as login, (n)ull or (r)everse login, enter these letters without spaces (e.g. \"sr\") or leave empty otherwise: " pw
read -p "Port number (press enter for default): " port
echo
echo The following options are supported by the service module:
hydra -U $service
echo
read -p "If you want to add module options, enter them here (or leave empty): " opt
echo

ports=""
pws=""
opts=""
test -e "$target" && targets="-M $target"
test -e "$target" || targets="$target"
test -e "$user" && users="-L $user"
test -e "$user" || users="-l $user"
test -e "$pass" && passs="-P $pass"
test -e "$pass" || passs="-p $pass"
test -n "$port" && ports="-s $port"
test -n "$pw" && pws="-e $pw"
test -n "$opt" && { opts="-m $opt" ; dopts="-m '$opt'" ; }

echo The following command will be executed now:
echo " hydra $users $passs -u $pws $ports $dopts $targets $service"
echo
read -p "Do you want to run the command now? [Y/n] " yn
test "$yn" = "n" -o "$yn" = "N" && { echo Exiting. ; exit 0 ; }
read -p "Do you want to run the command now? [Y/n] " yn
test "$yn" = "n" -o "$yn" = "N" && { echo Exiting. ; exit 0 ; }
echo
hydra $users $passs -u $pws $ports $opts $targets $service
