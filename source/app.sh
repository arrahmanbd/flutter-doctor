#Import Source Library
. ./source/common/constants.sh
. ./source/common/utility.sh
. ./source/common/action.sh
. ./source/common/animation.sh
. ./source/common/fallback.sh
. ./source/provider/setup.sh

function app() {
    printT "Setup Menu"
    sysInfo
    checkFiles
    appmenu "${INSTALL}" "${DOWNLOAD}" "${FALLBACK}" "${HELP}" "${ABOUT}"
    # Read user's choice
    read choice
    # Perform actions based on user's choice
    case $choice in
        1)
        setUp;;
        2)
        showLinks;;
        3)
        fallback;;
        4)
        showHelp;;
        5)
        aboutMe;;
    *)
    #If invalid choice pressed
    stupid app
    exit 1
    ;;
esac
}

