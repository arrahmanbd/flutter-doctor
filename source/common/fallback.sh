
function fallback() {
    printT "Did You Miss Something"
    systemCheck
    echo ""
    fallbackSteps
}
function fallbackSteps(){
    printT "Fallback Menu"
    appmenu "Install Additional Packages" "Extract Flutter SDK" "Extract Android SDK" "Set Global Path" "Restart Installer"
    # Read user's choice
    read choice
    # Perform actions based on user's choice
    case $choice in
        1)
        fallbackSetUp
        fallbackSteps;;
        2)
        select_file "${SELECT_FLUTTER_SDK}"
        fallbackSteps;;
        3)
        select_SDKfile "${SELECT_ANDROID_SDK}"
        fallbackSteps;;
        4)
        environment;;
        5)
        app;;
    *)
    #If invalid choice pressed
    stupid fallback
    exit 1
    ;;
esac
}