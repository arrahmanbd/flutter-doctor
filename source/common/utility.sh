function appmenu(){
    local option1=$1
    local option2=$2
    local option3=$3
    local option4=$4
    local option5=$5
    printC "1. ${option1}" "${Blue}"
    printC "2. ${option2}" "${Blue}" 
    printC "3. ${option3}" "${Blue}"
    printC "4. ${option4}" "${Blue}"
    printC "5. ${option5}" "${Blue}"
    echo
}

function choices(){
    local option1=$1
    local option2=$2
    printC "1. ${option1}" "${Blue}"
    printC "2. ${option2}" "${Blue}"
    echo
}
function confirm(){
    local option1=$1
    printB "${option1}"
}

#Print Basic
function printB(){
    local text=$1
    printf "\e[1;35m$text"
    echo -e "${Color_Off}"
}

#Print Success
function printS(){
    local text=$1
    printf "\e[1;32m$text"
    echo -e "${Color_Off}"
}
#Print Error
function printE(){
    local text=$1
    printf "\e[1;31m$text"
    echo -e "${Color_Off}"
}

#Print Colored
function printC(){
    local text=$1
    local color=$2
    printf "$color$text"
    echo -e "${Color_Off}"
}
#Print Title
function printT(){
    local title=$1
    printC "─────── $title ───────\n" "${Yellow}"
}

function stupid(){
  local stupidAction=$1
  printS "──▄────▄▄▄▄▄▄▄────▄───
─▀▀▄─▄█████████▄─▄▀▀──
─────██─▀███▀─██──────
───▄─▀████▀████▀─▄────
─▀█────██▀█▀██────█▀──
"
  printE "☢️ Dont be Stupid or Gay!!"
  printE "✗ Error Detected"
  printE "✗ Invalid Choice"
  printE "✗ Select a valid Option"
  $stupidAction
}

function check(){
    sleep 1
}
function dir(){
    local message=$1
    # Create the extraction folder if it doesn't exist
    mkdir -p "${EXTRACTION_LOCATION}"
    printS "✔ $message"
}

function estimateTime() {
    local size=$1
    local start=1
    local speed=13
    estimate=$((size * speed / 100))
    printf "%.2f\n" "$(echo $estimate)"
}

function onSuccess(){
local msg=$1
  printS "──────▄▀▄─────▄▀▄
─────▄█░░▀▀▀▀▀░░█▄
─▄▄──█░░░░░░░░░░░█──▄▄
█▄▄█─█░░▀░░┬░░▀░░█─█▄▄█
  "
  set_action "Setting" check
  set_action "Set Environment" setPath
  printC "✔ Workstation is ready " "${Yellow}"
  set_action "Testing" check
  printS "  ⮞ Flutter [OK]"
  printS "  ⮞ Commandline Tools [OK]"
  printS "  ⮞ PLatform Tools [OK]"
  printS "  ⮞ Linux Development [OK]"
  printS "$msg"
}
