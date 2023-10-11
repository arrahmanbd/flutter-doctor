. ./source/common/fallback.sh
function file_path() {
  local file=$(zenity --file-selection --title="Select .tar.xz File" --file-filter="*.tar.xz" --separator="|" 2>/dev/null)
  echo "$file"
}

# Function to prompt user to select .tar file using the file manager
function select_file() {
  printT "Set Flutter SDK"
  local fileType=$1
  confirm "$fileType"
  read choice
  if [[ $choice == "y" || $choice == "Y" || $choice == "YES" || $choice == "yes" ]]; then
    # Open file manager for file selection
    file=$(file_path)
    if [[ -z $file ]]; then
      printE "No file selected. Exiting..."
      printC "${NOFILE}" "${Red}"
      stupid fallback
      exit 1
    fi
    do_extract "$fileType" "$file"
  else
    printC "${SKIP}" "${Yellow}"
    stupid fallback
    exit 1
  fi
  echo
}
# Function to prompt user to select .tar file using the file manager
function select_SDKfile() {
  printT "Set Android SDK"
  local fileType=$1
  confirm "$fileType"
  read choice
  if [[ $choice == "y" || $choice == "Y" || $choice == "YES" || $choice == "yes" ]]; then
    # Open file manager for file selection
    file=$(file_path)
    if [[ -z $file ]]; then
      printE "No file selected. Exiting..."
      printC "${NOFILE}" "${Red}"
      stupid fallback
      exit 1
    fi
    do_extract "$fileType" "$file"
  else
    printC "${SKIP}" "${Yellow}"
    stupid fallback
    exit 1
  fi
  echo
}

function filePicker(){
  select_file "${SELECT_FLUTTER_SDK}"
  select_SDKfile "${SELECT_ANDROID_SDK}"
}