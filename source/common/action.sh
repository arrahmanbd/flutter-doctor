. ./source/common/constants.sh
. ./source/common/utility.sh

function set_action(){
    local name=$1
    local action=$2
    # Start the timer
    start_time=$(date +%s.%N)
    # Start the progress animation
    show_rotating_animation "$name"&
    progress_animation_pid=$!
    #action
    $action
    # Stop the progress animation
    kill $progress_animation_pid &> /dev/null
    printf "\r"
    # Display the calculated time
    end_time=$(date +%s.%N)
    elapsed_time=$(awk "BEGIN { printf \"%.2f\", $end_time - $start_time }")
    printf "\e[1;32m✔ $name Done\n"
    printf "\e[1;32m✔ Action completed in %.2f seconds" "$elapsed_time"
    echo
}

function do_extract(){
    local name=$1
    local file=$2
    #printf "\e[1;33m$name\n"
    filename=$(basename "$file")
    size=$(stat -c "%s" "$file") 
    size_mb=$((size / 1048576)) 
    info=$(stat "$file")
    # Start the timer
    start_time=$(date +%s.%N)
    # Start the progress animation
    estimated=$(estimateTime $size_mb)
    show_progress_animation &
    progress_animation_pid=$!
    #action
    printC "➜ File Selected:" "${Yellow}"
    printB "➜ File Status"
    printS "✔ File: $filename"
    printS "✔ Size: $size_mb MB"
    printS "✔ Expected: $estimated sec"
    tar -xf "$file" -C ~/Android --checkpoint=.100
    printB "\n..."
    printS "✔ Extraction completed."
    # Stop the progress animation
    kill $progress_animation_pid &> /dev/null
    printf "\r"
    # Display the calculated time
    end_time=$(date +%s.%N)
    elapsed_time=$(awk "BEGIN { printf \"%.2f\", $end_time - $start_time }")
    printf "\e[1;32m✔ Action completed in %.2f seconds\n" "$elapsed_time"
    echo
}

function Initialize(){
    local name=$1
    local app=$2
    printB "$name"
    $app
}

