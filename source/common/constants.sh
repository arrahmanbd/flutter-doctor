
# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\e[1;30m'        # Black
Red='\e[1;31m'          # Red
Green='\e[1;32m'        # Green
Yellow='\e[1;33m'       # Yellow
Blue='\e[1;34m'         # Blue
Purple='\e[1;35m'       # Purple
Cyan='\e[1;36m'         # Cyan
White='\e[1;37m'        # White
#APP Menu
INSTALL="Start Installer"
DOWNLOAD="Download Required Files!"
AUTO="Auto(Beta)"
FALLBACK="Fallback"
HELP="Help"
ABOUT="About me"
#Initializing
DOWNLOAD_LOCATION="/tmp/flutter.tar.xz"
EXTRACTION_LOCATION="$HOME/Android"
#Defination and Text Variable
ASK_DISTRO="Please Select Distro Category (1/2)?"
ARCH="ArchLinux, Manjaro"
DEBIAN="Debian, Ubuntu, Kali"
#Selecting files
SELECT_FLUTTER_SDK="Select flutter*.tar.gz file. (yes/skip)"
SELECT_ANDROID_SDK="Select sdk*.tar.gz file. (yes/skip)"

#Required Package
FOLDER_CREATED="Directory Created"
REQUIRED="Some Package Required* (yes/skip)"
SET_SIZE="Start Downloading Open JDK\nSize = 250MB"
ESTIMATED="✔ Expected: "
REMAIN="⏳ Remaining: "

#Setting Path Variable
SET_PATH="Set Environment Variable? (yes)"

#On Success
SUCCESS="⭮ Reboot and Enjoy!!!\n✔ Happy Coding"
AlSO_REQUIRED="Please Manually Install:\n"
EXTRA_APP="Visual Studio Code\nGoogle Chrome"

#Warings
SELECTED="Selected: "
CONFIGURING="✔ Checking Requirment"
ZENITY_ERROR="✘ File picker is not installed (✗)"
DONT_WORRY="✔ Don't Worry!! Auto installing"
SKIP="➥ You are Skipping to Next Step"
NOFILE="➥ You didn't select any file (✗)"

ENVIRONMENT="
# Flutter Setup By AR Rahman(Heartless)
export PATH=\"\$PATH:\$HOME/Android/flutter/bin\"
export ANDROID_HOME=\"\$HOME/Android/Sdk\"
export ANDROID_TOOLS=\"\$HOME/Android/Sdk/cmdline-tools/latest\"
export ANDROID_PLATFORM_TOOLS=\"\$HOME/Android/Sdk/platform-tools\"
PATH=\"\$PATH:\$ANDROID_HOME:\$ANDROID_TOOLS:\$ANDROID_PLATFORM_TOOLS\"
# Chrome Setup
export CHROME_EXECUTABLE=/usr/bin/google-chrome-stable
"
#Greeting
iflutter="
____▄▀▀▀▄▄▄▄▄▄▄▀▀▀▄_
───█▒▒░░░░░░░░░▒▒█───
────█░░█░░░░░█░░█────
─▄▄──█░░░▀█▀░░░█──▄▄─
█░░█─▀▄░░░░░░░▄▀─█░░█
█▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
█  ╔===╗'m FlutterDoc█
█  ╚╗ ╔╝   Smartest  █
█  ╔╝ ╚╗   Flutter   █
█  ╚===╝   Installer █
█▄▄▄▄▄▄▄▄≧◉ᴥ◉≦▄▄▄▄▄▄▄█
"
authorImage=" 
    ---::::::::::::::::::::::::::::::---    
    -::::::::::...-***+*++*=...:::::::::    
    ::::::::....=@@@%%#++*@@@@-..:::::::    
    ::::::......+@@@@@@@@@*%@@@@:..:::::    
    ::::........+%@@@@@@@@@%%@@@@-..::::    
    ::.........=*+#***+#%@@@%%@@@*....::    
    ::.........=#:......:+%@@@@@@+.....:    
    :.........+%:.::......-#@@@@@......:    
    ..........+=:*##%#*==++*%@@@........    
    ..............=***::@@@@@%@+........    
    ...........:.......-+#%%@@#.........    
    ...........-=+-.:.-**--=%*..........    
    :..........+=+=:*%@@#*#@+...........    
    :.......-**#+---:+@@%%@=...........:    
    ::....:##*%=*+:-+#%%@@@@%.........::    
    ::...:%#**#:+***#%%@@@@@@@*::....:::    
                                            
                                            
                                            "
AUTHOR="
╔===╗'m AR Rahman
╚╗ ╔╝   Flutter Developer
╔╝ ╚╗   @arrahmanbd
╚===╝   arrahmanbd.github.io"