#!/bin/bash

arg=$1

usr=$(whoami)
date=$(date)

clear
echo "    ___ "
echo "   /   |"
echo "  / /| |"
echo " / ___ |"
echo "/_/  |_|"
sleep 0.25

clear
echo "    ___        "
echo "   /   |  ____ "
echo "  / /| | / __  "
echo " / ___ |/ /_/ /"
echo "/_/  |_/ ____/ "
echo "      /_/      "
sleep 0.25

clear
echo "    ___              "
echo "   /   |  ____  ____ "
echo "  / /| | / __ \/ __  "
echo " / ___ |/ /_/ / /_/ /"
echo "/_/  |_/ ____/ ____/ "
echo "      /_/   /_/      "
sleep 0.25

clear
echo "    ___                ____"
echo "   /   |  ____  ____  /  _/"
echo "  / /| | / __ \/ __ \ / /  "
echo " / ___ |/ /_/ / /_/ // /   "
echo "/_/  |_/ ____/ ____/___/   "
echo "      /_/   /_/            "
sleep 0.25

clear
echo "    ___                ____    "
echo "   /   |  ____  ____  /  _/___ "
echo "  / /| | / __ \/ __ \ / // __  "
echo " / ___ |/ /_/ / /_/ // // / / /"
echo "/_/  |_/ ____/ ____/___/_/ /_/ "
echo "      /_/   /_/                "
sleep 0.25

clear
echo "    ___                ____          "
echo "   /   |  ____  ____  /  _/___  _____"
echo "  / /| | / __ \/ __ \ / // __ \/ ___/"
echo " / ___ |/ /_/ / /_/ // // / / /__  / "
echo "/_/  |_/ ____/ ____/___/_/ /_/____/  "
echo "      /_/   /_/                      "
sleep 0.25

clear
echo "    ___                ____           __"
echo "   /   |  ____  ____  /  _/___  _____/ /_"
echo "  / /| | / __ \/ __ \ / // __ \/ ___/ __/"
echo " / ___ |/ /_/ / /_/ // // / / (__  ) /_"
echo "/_/  |_/ ____/ ____/___/_/ /_/____/\__/"
echo "      /_/   /_/"
sleep 0.25


echo ""

echo "Good day, today is $date"

echo ""

PS3='Please select file type: '
options=("PKG Managers" "File" "Compile&Install" "Install Requierments" "Quit")
select opt in "${options[@]}"
do
    case $opt in
            "PKG Managers")
            clear

            echo "    ____  __ ________   __  ______    _   __"
            echo "   / __ \/ //_/ ____/  /  |/  /   |  / | / /"
            echo "  / /_/ /  < / / __   / /|_/ / /| | /  |/ / "
            echo " / ____/ /| / /_/ /  / /  / / ___ |/ /|  /  "
            echo "/_/   /_/ |_\____/  /_/  /_/_/  |_/_/ |_/   "

    PS3='Please select ManagerType type: '
options=("apt" "pacman" "snap" "flatpak" "yay")
select opt in "${options[@]}"
do
    case $opt in
        "apt")
        clear

        echo "               __ "
        echo "  ____ _____  / /_"
        echo " / __  / __ \/ __/"
        echo "/ /_/ / /_/ / /_  "
        echo "\____/ ____/\__/  "
        echo "    /_/           "

            echo "apt install script will run in 5s. Press CTRL+C if you changed your mind!"
        echo "->5"
        sleep 1
        echo "-->4"
        sleep 1
        echo "--->3"
        sleep 1
        echo "---->2"
        sleep 1
        echo "----->1"
        sleep 1
        echo "------>Start<------"
       echo "Installing"
            sudo apt install $arg -y

             echo "Done"
            ;;

        "pacman")
        clear

        echo "    ____  ____ __________ ___  ____ _____ "
        echo "   / __ \/ __  / ___/ __  __ \/ __  / __  "
        echo "  / /_/ / /_/ / /__/ / / / / / /_/ / / / /"
        echo " / ____/\____/\___/_/ /_/ /_/\____/_/ /_/ "
        echo "/_/                                       "

            echo "pacman install script will run in 5s. Press CTRL+C if you changed your mind!"
        echo "->5"
        sleep 1
        echo "-->4"
        sleep 1
        echo "--->3"
        sleep 1
        echo "---->2"
        sleep 1
        echo "----->1"
        sleep 1
        echo "------>Start<------"

        echo "Pacman DB Sync"

            sudo pacman -Syy
            echo "Installing"
            sudo pacman -S $arg

             echo "Done"
            ;;

        "snap")
        clear
        echo "   _________  ____ _____ "
        echo "  / ___/ __ \/ __  / __  "
        echo " /__  / / / / /_/ / /_/ /"
       echo "/____/_/ /_/\____/ ____/ "
       echo "                /_/      "

            echo "snap install script will run in 5s. Press CTRL+C if you changed your mind!"
        echo "->5"
        sleep 1
        echo "-->4"
        sleep 1
        echo "--->3"
        sleep 1
        echo "---->2"
        sleep 1
        echo "----->1"
        sleep 1
        echo "------>Start<------"
            echo "Installing"
            sudo snap install $arg

             echo "Done"
            ;;

        "flatpak")
        clear

        echo "    ______      __              __  "
        echo "   / __/ /___ _/ /_____  ____ _/ /__"
        echo "  / /_/ / __  / __/ __ \/ __  / //_/"
        echo " / __/ / /_/ / /_/ /_/ / /_/ / /<   "
       echo "/_/ /_/\____/\__/ ____/\____/_/|_|  "
        echo "               /_/                  "

            echo "flatpak/flathub install script will run in 5s. Press CTRL+C if you changed your mind!"
        echo "->5"
        sleep 1
        echo "-->4"
        sleep 1
        echo "--->3"
        sleep 1
        echo "---->2"
        sleep 1
        echo "----->1"
        sleep 1
        echo "------>Start<------"
            echo "Installing"
            flatpak install flathub $arg
            echo "Running"
            flatpak run $arg

 echo "Done"

            ;;
                    "yay")
        clear
        echo "   __  ______ ___  __   ____ ___  _______"
        echo "  / / / / __  / / / /  / __  / / / / ___/"
        echo " / /_/ / /_/ / /_/ /  / /_/ / /_/ / /    "
        echo " \___ /\____/\___ /   \____/\____/_/     "
        echo "/____/      /____/                       "
echo "yay aur helper install script will run in 5s. Press CTRL+C if you changed your mind!"
        echo "->5"
        sleep 1
        echo "-->4"
        sleep 1
        echo "--->3"
        sleep 1
        echo "---->2"
        sleep 1
        echo "----->1"
        sleep 1
        echo "------>Start<------"

        echo "Yay DB Sync"

    sudo yay -Syy
                echo "Installing"
    sudo yay -S $arg

     echo "Done"
             ;;
    esac
    done

      ;;

        "File")
clear

echo "    _______ __        ____           __ "
echo "   / ____/_/ /__     /  _/___  _____/ /_"
echo "  / /_  / / / _ \    / // __ \/ ___/ __/"
echo " / __/ / / /  __/  _/ // / / /__  / /_  "
echo "/_/   /_/_/\___/  /___/_/ /_/____/\__/  "
PS3='Please select file type: '
options=("appimage" "deb-arch" "tar.gz")
select opt in "${options[@]}"
do
    case $opt in
        "appimage")
        clear

        echo "                     __               "
        echo "  ____ _____  ____  /_/___ ___  ____ _"
        echo " / __  / __ \/ __ \/ / __  __ \/ __  /"
        echo "/ /_/ / /_/ / /_/ / / / / / / / /_/ / "
        echo "\____/ ____/ ____/_/_/ /_/ /_/\___ /  "
        echo "    /_/   /_/                /____/   "

            echo "AppIMG script will run in 5s. Press CTRL+C if you changed your mind!"
        echo "->5"
        sleep 1
        echo "-->4"
        sleep 1
        echo "--->3"
        sleep 1
        echo "---->2"
        sleep 1
        echo "----->1"
        sleep 1
        echo "------>Start<------"

            chmod +x $arg
            ./$arg --disable-gpu-sandbox

             echo "Done"
            ;;

        "deb-arch")
        clear

echo "       __     __    __          "
echo "  ____/ /__  / /_  /_/___ _____ "
echo " / __  / _ \/ __ \/ / __ // __  "
echo "/ /_/ /  __/ /_/ / / /_/ / / / /"
echo "\____/\___/_____/_/\____/_/ /_/ "

            echo "Deb convert script will run in 5s. Press CTRL+C if you changed your mind!"
        echo "->5"
        sleep 1
        echo "-->4"
        sleep 1
        echo "--->3"
        sleep 1
        echo "---->2"
        sleep 1
        echo "----->1"
        sleep 1
        echo "------>Start<------"

        "Debtap sync"
            sudo debtap -u
            echo "converting"
            sudo debtap $arg
            echo "Install converted pkg using - sudo pacman -U pkgname"

             echo "Done"
            ;;

        "tar.gz")
        clear

        echo "   __                               "
        echo "  / /_____ ______   ____ _____      "
        echo " / __/ __  / ___/  / __  /_  /      "
        echo "/ /_/ /_/ / /     / /_/ / / /_      "
        echo "\__/\____/_/_/    \___ / /___/      "
        echo "                 /____/             "

            echo "tar.gz install script will run in 5s. Press CTRL+C if you changed your mind!"
        echo "->5"
        sleep 1
        echo "-->4"
        sleep 1
        echo "--->3"
        sleep 1
        echo "---->2"
        sleep 1
        echo "----->1"
        sleep 1
        echo "------>Start<------"

             echo "Done"
            ;;

    esac
    done

  ;;

      "Install Requierments")
    clear
    echo "    ____           __  ____            "
    echo "   /  _/___  _____/ /_/ __  ___  ____ _"
    echo "   / // __ \/ ___/ __/ /_/ / _ \/ __   "
    echo " _/ // / / /__  / /_/ _  _/  __/ /_/ / "
    echo "/___/_/ /_/____/\__/_/ |_|\___/\__  /  "
    echo "                                 /_/   "

    PS3='Please select file type: '
options=("Snap" "Flatpak" "Fuse" "Debtap" "Yay" "Git")
    select opt in "${options[@]}"
do
    case $opt in
        "Snap")
        clear

        echo "   _____                 "
        echo "  / ___/____  ____ _____ "
        echo "  \__ \/ __ \/ __  / __  "
        echo " ___/ / / / / /_/ / /_/ /"
        echo "/____/_/ /_/\____/  ___/ "
        echo "                /_/      "
        echo "Snapd installation script will run in 5 seconds. Press CTRL+C if you changed your mind!"
        echo "->5"
        sleep 1
        echo "-->4"
        sleep 1
        echo "--->3"
        sleep 1
        echo "---->2"
        sleep 1
        echo "----->1"
        sleep 1
        echo "------>Start<------"

        cd /home/$usr/Downloads
        echo "Cloning snapd"
        git clone https://aur.archlinux.org/snapd.git
        echo "Getting into clone dir"
        cd snapd
        echo "Making Package"
        makepkg -si

        echo "Auto enabling snap socket"
        sudo systemctl enable --now snapd.socket
                echo "Complete"

        ;;

"Flatpak")

clear

        echo "    ______      __              __  "
        echo "   / __/ /___ _/ /_____  ____ _/ /__"
        echo "  / /_/ / __  / __/ __ \/ __  / //_/"
        echo " / __/ / /_/ / /_/ /_/ / /_/ / /<   "
       echo "/_/ /_/\____/\__/ ____/\____/_/|_|  "
        echo "               /_/                  "
         echo "Flatpak installation script will run in 5 seconds. Press CTRL+C if you changed your mind!"
        echo "->5"
        sleep 1
        echo "-->4"
        sleep 1
        echo "--->3"
        sleep 1
        echo "---->2"
        sleep 1
        echo "----->1"
        sleep 1
        echo "------>Start<------"

        echo "Pacman DB Sync"
        sudo pacman -Syy
echo "flatpak installation"
        sudo pacman -S flatpak
                echo "Complete"

;;

"Fuse")

echo "    ____                   "
echo "   / __/_  __________      "
echo "  / /_/ / / / ___/ _ \     "
echo " / __/ /_/ (__  )  __/     "
echo "/_/  \____/____/\___/      "
 echo "Fuse installation script will run in 5 seconds. Press CTRL+C if you changed your mind!"
        echo "->5"
        sleep 1
        echo "-->4"
        sleep 1
        echo "--->3"
        sleep 1
        echo "---->2"
        sleep 1
        echo "----->1"
        sleep 1
        echo "------>Start<------"

                echo "Pacman DB Sync"
        sudo pacman -Syy
        echo "Installing fuse"
        sudo pacman -S fuse
        echo "Complete"

;;

"Debtap")

echo "       __     __    __            "
echo "  ____/ /__  / /_  / /_____ _____ "
echo " / __  / _ \/ __ \/ __/ __  / __  "
echo "/ /_/ /  __/ /_/ / /_/ /_/ / /_/ /"
echo "\____/\___/_____/\__/\____/ ____/ "
echo "                         /_/      "
echo "debtap installation script will run in 5 seconds. Press CTRL+C if you changed your mind!"
        echo "->5"
        sleep 1
        echo "-->4"
        sleep 1
        echo "--->3"
        sleep 1
        echo "---->2"
        sleep 1
        echo "----->1"
        sleep 1
        echo "------>Start<------"

                echo "Yay DB Sync"
        yay -Syy
        echo "Installing debtap from aur"
        yay -S debtap
        echo "Complete"

;;

"Yay")
        echo "   __  ______ ___  __   ____ ___  _______"
        echo "  / / / / __  / / / /  / __  / / / / ___/"
        echo " / /_/ / /_/ / /_/ /  / /_/ / /_/ / /    "
        echo " \___ /\____/\___ /   \____/\____/_/     "
        echo "/____/      /____/                       "
echo "Yay -aur helper- installation script will run in 5 seconds. Press CTRL+C if you changed your mind!"
        echo "->5"
        sleep 1
        echo "-->4"
        sleep 1
        echo "--->3"
        sleep 1
        echo "---->2"
        sleep 1
        echo "----->1"
        sleep 1
        echo "------>Start<------"
                cd /home/$usr/Downloads
echo "Cloning Yay aur helper repo"
git clone https://aur.archlinux.org/yay.git
echo "getting into clonned repo"
cd yay
echo "making pakage"
makepkg
echo "Installing created pakage with pacman "
sudo pacman -U yay-11.1.2-1-x86_64.pkg.tar.zst
        echo "Complete"

        ;;

        "Git")

        echo "          _ __ "
        echo "   ____ _/_/ /_"
        echo "  / __  / / __/"
        echo " / /_/ / / /_  "
        echo " \___ /_/\__/  "
        echo "/____/         "
echo "Git installation script will run in 5 seconds. Press CTRL+C if you changed your mind!"
        echo "->5"
        sleep 1
        echo "-->4"
        sleep 1
        echo "--->3"
        sleep 1
        echo "---->2"
        sleep 1
        echo "----->1"
        sleep 1
        echo "------>Start<------"

        echo "DB sync"
        sudo pacman -Syy
echo "Installing git"
sudo pacman -S git

        ;;

    esac
    done
       ;;


    "Compile&Install")
    clear

    echo "   ______   ___        ____           __ "
    echo "  / ____/  / _ /      /  _/___  _____/ /_"
    echo " / /      / __ \/|    / // __ \/ ___/ __/"
    echo "/ /___   / /_/  <   _/ // / / /__  / /_  "
    echo "\____/   \____/\/  /___/_/ /_/____/\__/  "
    echo "This script does not work as of now!"

            ;;

            "Quit")
            echo "Thanks for using AppInst , provided to you by nameless. Goodbye $usr"
            break

            ;;

        *) echo "Wrong pill  $usr";;
    esac
done
