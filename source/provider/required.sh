
# Function to install Required Package
function onArch() {
  read choice
  if [[ $choice == "yes" || $choice == "YES" || $choice == "y"|| $choice == "Y" ]]; then
    installer archPack
  fi
}
# Function to install Required Package
function onDebian() {
  read choice
  if [[ $choice == "yes" || $choice == "YES" || $choice == "y"|| $choice == "Y" ]]; then
    installer debPack
  fi
}


function requirements(){
      printT "Required Packages"
      local packType=$1
      set_action "Checking" check
      printB "\n➜ This packages are Required from Internet\n➜ Requires (sudo) elevated privileges."
      printS "✔ Git (26 MB)"
      printS "✔ OpenJDK (273 MB)"
      printS "✔ CMake (83 MB)"
      printS "✔ Ninja (13 MB)"
      printS "✔ Total: (350 MB)"
      estimated=$(estimateTime 500)
      printS "✔ Expected: $estimated sec"
      printB "Press [Y/YES] to Continue"
      $packType
} 

function archPack(){
      printS "Installing Git..."
      sleep 1
      sudo pacman -Syu --noconfirm git
      printS "Installing JAVA..."
      sleep 1
      sudo pacman -Syu --noconfirm jdk17-openjdk
      printS "Installing CMake and Ninja..."
      sleep 1
      sudo pacman -Syu --noconfirm cmake ninja
}

function debPack(){
      printS "Installing Git..."
      sleep 1
      sudo apt-get update -y
      sudo apt-get install git -y
      printS "Installing Java..."
      sleep 1
      sudo apt-get install -y openjdk-17-jdk
      printS "Installing Cmake,Ninja..."
      sleep 1
      sudo apt-get install -y cmake ninja-build adb clang libgtk-3-dev
}

function installer(){
      local action=$1
      echo -e "\e[1;36mStarting installation..."
      # Start the timer
      start_time=$(date +%s.%N)
      sleep 1
      $action
      end_time=$(date +%s.%N)
      elapsed_time=$(awk "BEGIN { printf \"%.2f\", $end_time - $start_time }")
      printf "\e[1;32m✔ Successfully Installated\n"
      printf "\e[1;32m✔ Installation completed in %.2f seconds\n" "$elapsed_time"
}

