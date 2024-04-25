. ./source/app.sh
. ./source/provider/setup.sh
function systemCheck(){
    set_action "Distro Checking" check
    printB "$(sysInfo)"
    printS "${CONFIGURING}"
    dir "${FOLDER_CREATED}"
    set_action "Checking" check
}
function sysInfo() {
    printB "✔ $(grep '^NAME=' /etc/os-release | cut -d'=' -f2- | tr -d '"')"
    mem_total=$(grep 'MemTotal' /proc/meminfo | awk '{print $2}')
    mem_total_gb=$((mem_total / 1024 / 1024))
    printB "✔ RAM: $mem_total_gb GB"
    # Check if RAM is less than 4GB
    if (( mem_total_gb < 4 )); then
        printE "✗ Upgrade your RAM"
    fi
}


function showHelp() {
    printT "Help & Options"
    printB "See the Documentation or Watch the Video"
    printS "Never Gonna Give You Down"
    echo ""
    printS "Options:"
    printB "  --auto    Auto download & setup flutter & Android sdk"
    printB "  --link    Displays required files download links and exit"
    printB "  --help    Display this help message and exit"
    echo
    continued
}
function checkFiles() {
    if ls ~/Downloads/{flutter_linux*,Sdk*} >/dev/null 2>&1; then
        printS "✔ Ready to install"
    else
        printS "▶ Did you downloaded flutter & sdk from release?? 🤔 --links"
    fi
    printB "───────────────"
}

#Show Download LInk
function showLinks(){
    printT "Grabbing Links"
    printS "✔ Getting Request"
    printS "${CONFIGURING}"
    set_action "Checking" check
    printS "✔ Link Generated\n"
    printT "Download Links"
    printB "▣ Flutter SDK:"
    printS "▶ https://docs.flutter.dev/release/archive?tab=linux"
    printB "▣ Android SDK:"
    printS "▶ https://drive.google.com/file/d/1QhSBbGOIicV4QNit7Umb4k03cm-VyQGD/view?usp=drive_link\nOr,"
    printS "▶ https://u.pcloud.link/publink/show?code=XZjeFvVZITLzDBzQ1Bmo78wzY32V4bkLpK8X\n"
    
    continued
    echo
}

function aboutMe() {
    printT "About Me"
    printS "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣤⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣶⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢨⣿⠋⠀⠈⠁⠈⢹⡇⠀⠀⠀⠀⢱⡀⠁⠰⢄⠀⠀⠀⠀
⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡿⡾⢿⣧⠰⢶⣾⠁⠀⠀⠀⢠⠋⠀⠀⠀⠀⠀⠀⠀⠀
⠀⡀⠈⢢⠀⠀⠀⠀⠐⠤⣀⣹⣧⡉⢈⠛⠂⢀⣜⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠱⡀⠘⡄⠀⠀⢀⡰⠈⢙⡏⣿⢷⡈⠉⢉⣾⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠁⡸⠙⢆⠀⢨⡀⣠⠏⡰⣿⡀⠉⠉⢉⣷⡈⠒⠀⠠⠀⠀⠔⠁⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢣⠀⢸⣀⣤⣽⣿⣿⣿⣿⡏⢀⡠⠊⣾⣿⣷⣦⣤⣀⠀⠀⠀⠀⠀⠰⡄⠀⠀⠀
⠀⠀⠀⠀⠇⣼⣿⣿⣿⣿⣿⣿⣾⣿⣏⣀⣰⣿⣿⡟⠉⠛⢿⣿⣦⠀⠀⢳⡀⠈⠳⡀⠉
⠀⠀⣰⠁⢠⣿⣿⣿⣿⣿⣿⣿⢹⣿⣯⣽⣿⣿⣿⣦⠀⠀⣾⣿⣿⡆⠀⠘⡇⠀⠀⠀⠀
⠀⡸⠃⠀⣿⣿⣿⣿⣿⣿⣿⣿⣸⣿⣾⣿⣿⣿⣿⣿⣤⠀⣿⣿⣿⡇⠈⢆⠀⠀⠀⠀⠀
⠈⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠈⠂⠀⠀⠀⠀
⠀⠀⢠⣿⣿⣿⣿⣿⡿⠋⠉⠉⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⡀⠀⡀⠀⠀⠀
⠀⠀⢹⣿⣿⣿⣿⣿⣇⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡦⠃⠀⠀⠀
⠀⠀⠘⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀"
    printS "    Never Gonna Give You Up\n"
    printC "Connect :" "${Yellow}"
    printC "Facebook:           arrahman.dev" "${Blue}"
    printC "LinkedIn:           arrahman.bd" "${Cyan}"
    printC "GitHUb  :           arrahmanbd" "${Purple}"
    printC "YouTube :           @fluttercamp" "${Red}"
    printT "Thanks Me Later"
    echo
    continued
}

function continued(){
    printB "⮞ Press enter to Continue..."
    read choice
    if [[ $choice == "x" || $choice == "X" || $choice == "Exit" || $choice == "EXIT" ]]; then
    exit 0
    fi
    app
}
