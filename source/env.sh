# Function to set the path variable in the .bashrc file
function environment() {
  printT "Set Global Variables"
  printB "${SET_PATH}"
  read choice
  if [[ $choice == "y" || $choice == "Y" || $choice == "YES" || $choice == "yes" ]]; then
    onSuccess "${SUCCESS}"
    fi
    exit 0
}

function setPath(){
  local path_value="${ENVIRONMENT}"
  echo "$path_value" >> ~/.bashrc
}