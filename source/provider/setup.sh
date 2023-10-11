#Import Source Library
. ./source/common/utility.sh
. ./source/common/constants.sh
. ./source/common/action.sh
. ./source/common/animation.sh
. ./source/common/fallback.sh
. ./source/picker.sh
. ./source/provider/required.sh
. ./source/env.sh


function setUp() {
    printT "Select Distro"
    systemCheck
    printB "${ASK_DISTRO}"
    choices "${ARCH}" "${DEBIAN}"
    # Read user's choice
    read choice
    # Perform actions based on user's choice
    case $choice in
        1)
        printT "${SELECTED}(Arch)"
        if ! command -v zenity &>/dev/null; then
        printE "${ZENITY_ERROR}"
        printS "${DONT_WORRY}"
        sudo pacman -S zenity -y
        fi
        filePicker
        requirements onArch
        environment
        ;;
        2)
        printT "${SELECTED}(Debian)"
        if ! command -v zenity &>/dev/null; then
        printE "${ZENITY_ERROR}"
        printS "${DONT_WORRY}"
        sudo apt-get install zenity -y
        fi
        filePicker
        requirements onDebian
        environment
        ;;
        *)
        # If an invalid choice is pressed
        echo "Invalid choice"
        stupid setup
        #exit 1
        ;;
    esac
}
function fallbackSetUp(){
    printT "Distro Category"
    printB "${ASK_DISTRO}"
    choices "${ARCH}" "${DEBIAN}"
    # Read user's choice
    read choice
     case $choice in
        1)
        if ! command -v zenity &>/dev/null; then
        printE "${ZENITY_ERROR}"
        printS "${DONT_WORRY}"
        sudo pacman -S zenity -y
        fi
        requirements onArch
        ;;
        2)
        if ! command -v zenity &>/dev/null; then
        printE "${ZENITY_ERROR}"
        printS "${DONT_WORRY}"
        fi
        sudo apt-get install zenity -y
        requirements onDebian
        ;;
        *)
    #If invalid choice pressed
    stupid fallback
    exit 1
    ;;
esac
}
