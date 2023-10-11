# Function to display the rotating animation/-\|
function show_rotating_animation() {
    local info=$1
    local i=1
    local chars="/-\|"

    while true
    do
        printf "\e[1;34m\r$info...%s" "${chars:i++%${#chars}:1}"
        sleep 0.1
    done
}

# Function to display the progress animation
function show_progress_animation() {
  local width=4
  local i=0
  local progress=0

  while true; do
    if (( i < width )); then
      ((i += 1))
    else
      ((i = 0))
    fi
    percent=$(awk "BEGIN { printf \"%.2f\", $progress * 100 / $width }")
    printf "\e[1;34m\r➜ Checking File..... %s%%" "$percent"
    if (( progress < width )); then
      ((progress += 1))
    else
      printf "\n\e[1;32m✔ Check Complete"
      printf "\n\e[1;32m✔ No Error Found"
      printf "\n\e[1;32m✔ Extracting File\n"  # Print "Check Complete" when progress reaches 100%
      break
    fi

    sleep 0.2
  done
}

# Function to display the animation
function bar_animation() {
  local pid=$1
  local delay=0.1
  local spin='-\|/'
  local count=0

  while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
    local temp=${spin#?}
    printf " [%c] %3d%%" "$spin" "$count"
    local spin=$temp${spin%"$temp"}
    sleep $delay
    printf "\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"
    ((count++))
    if [ $count -eq 101 ]; then
      count=0
    fi
  done
  printf "    \b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"
}

