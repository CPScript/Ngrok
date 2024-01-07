#!/bin/bash


# are you rooted?
if [[ $(id -u) -eq 0 ]]; then
  echo "You're are rooted, please wait..."
  sleep 5

  # main script
  echo "Updating and Upgrading First..."
  echo ""
  sleep 1
  apt update && apt upgrade -y
  apt install -y wget unzip
  clear

  # run animation
  ./assets/file.sh &

  echo -e ' 
                 ░░░░░░███████]▄▄▄▄▄▄▄▄▃          
                  ▂▄▅█████████▅▄▃▂
                 |███████████████████].
                 ◥⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙◤
        ********************************************
        *               By: CPScript               *
        *           >Easy Ngrok installer<         *
        *       Do you want to install Ngrok?      *
        ********************************************  
  '
  echo ""

  echo -e '┌─[y/n] - [Please choose]'
  read -p "└─────► " choice
  if [[ $choice =~ ^[Yy]$ ]]; then
      echo "Downloading Ngrok!"
      echo "Please wait..."
      sleep 1
        
      case $(dpkg --print-architecture) in
          aarch64) architectureURL="arm64" ;;
          arm) architectureURL="arm" ;;
          armhf) architectureURL="armhf" ;;
          amd64) architectureURL="amd64" ;;
          i*86) architectureURL="i386" ;;
          x86_64) architectureURL="amd64" ;;
          *)
          echo "Unknown Architecture"
          exit 1
          ;;
      esac
      
      wget -O ngrok.zip "https://github.com/tchelospy/NgrokTest/raw/master/ngrok-stable-linux-${architectureURL}.zip"
      unzip ngrok.zip
      mv ngrok /data/data/com.termux/files/usr/bin/
      chmod +x /data/data/com.termux/files/usr/bin/ngrok
      rm ngrok.zip
  
      clear
      echo "********************************************"
      echo "*                                          *"
      echo "*      Ngrok Installation Completed!       *"
      echo "*     -------------------------------      *"
      echo "*       Use Example: ngrok http 8080         *"
      echo "*     For more help, type: ngrok help      *"
      echo "*                                          *"
      echo "********************************************"
  else
      clear
      echo "Ngrok installation aborted."
      sleep 10
      clear
  fi

else
    echo "You're not rooted, please root yourself."
    echo "How to root yourself: sudo su <password might be required>"
fi
