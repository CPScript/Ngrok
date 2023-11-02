#!/bin/dash

echo "\033[1;92mUpdating and Upgrading First..."
echo ""
sleep 1
apt update && apt upgrade -y
apt install -y wget
clear
k='\033[1;92m'
echo "\033[1;90m
         ░░░░░░███████]▄▄▄▄▄▄▄▄▃
         ▂▄▅█████████▅▄▃▂
        |███████████████████].
         ◥⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙◤

    \033[0;32m ░▒▓\033[1;92m██████████►\033[1;95m╬\033[1;92m◄██████████\033[0;32m▓▒░
    \033[0;32m ░▒▓\033[1;92m██►\033[1;91m╔╦╦╦═╦╗╔═╦═╦══╦═╗\033[1;92m◄██\033[0;32m▓▒░
    \033[0;32m ░▒▓\033[1;92m██►\033[1;91m║║║║╩╣╚╣═╣║║║║║╩╣\033[1;92m◄██\033[0;32m▓▒░
    \033[0;32m ░▒▓\033[1;92m██►\033[1;91m╚══╩═╩═╩═╩═╩╩╩╩═╝\033[1;92m◄██\033[0;32m▓▒░
    \033[0;32m ░▒▓\033[1;92m██████████►\033[1;95m╬\033[1;92m◄██████████\033[0;32m▓▒░";
echo
echo "\033[1;96mDo You Want to Install Ngrok? [Y/n]"
read opcao
case $opcao in
Y|y)
echo ""
echo "\033[1;93mDownloading Termux-ngrok..."
sleep 1
case $(dpkg --print-architecture) in
aarch64)
    architectureURL="arm64" ;;
arm)
    architectureURL="arm" ;;
armhf)
    architectureURL="armhf" ;;
amd64)
    architectureURL="amd64" ;;
i*86)
    architectureURL="i386" ;;
x86_64)
    architectureURL="amd64" ;;
*)
    echo "\033[1;91mUnknown Architecture"
    exit 1
esac

wget -O ngrok.zip "https://github.com/tchelospy/NgrokTest/raw/master/ngrok-stable-linux-${architectureURL}.zip"
unzip ngrok.zip
mv ngrok /data/data/com.termux/files/usr/bin/
chmod +x /data/data/com.termux/files/usr/bin/ngrok
rm ngrok.zip
clear
echo "${k}███╗   ██╗ ██████╗ ██████╗  ██████╗ ██╗  ██╗";
echo "${k}████╗  ██║██╔════╝ ██╔══██╗██╔═══██╗██║ ██╔╝";
echo "${k}██╔██╗ ██║██║  ███╗██████╔╝██║   ██║█████╔╝ ";
echo "${k}██║╚██╗██║██║   ██║██╔══██╗██║   ██║██╔═██╗ ";
echo "${k}██║ ╚████║╚██████╔╝██║  ██║╚██████╔╝██║  ██╗";
echo "${k}╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝";
sleep 1
echo "
……………..  ^v^
⋱ ⋮ ⋰
⋯ ◯ ⋯¨. ︵ ……………………………………….     ^v^
¨︵¸︵( ░░ )︵.︵.︵………….. ^v^
(´░░░░░░ ‘) ░░░’ )  )
`´︶´¯`︶´`︶´︶´`︶…..^v^………   . ^v^
……………………………………..   ︵.︵
…….………………………………. (˛. *˛.)…….. ^v^
………………………………….. (˛˛. *。 )
……….…………. (˛* ˛*˛* )


      ˛_Π_____.
……………./______/~＼…………\..|.|
˛╬╬╬╬╬˛°.｜田田 ｜門｜╬╬╬╬╬—╬╬╬╬╬
╔═══'•'๑۩۞۩๑•══•๑۩۞۩๑•══•๑۩۞۩๑•══•๑۩۞۩๑'•'═══╗";
echo ""
echo ""
echo "\033[1;92mSuccessfully Installed !!"
echo ""
sleep 1
echo "\033[1;97mCommand Example (\033[1;95mngrok http 80\033[1;97m) \n\nOr ngrok For Help" 
echo ""
;;

N|n)
clear
echo "\033[1;91mNgrok installation aborted."
echo ""
;;

*)
echo "\033[1;91mInvalid option. Please choose Y or n."
;;
esac
