#!/bin/bash
. ./source/extensions/preloader.sh
. ./source/common/action.sh
. ./source/helper/helper.sh
. ./source/app.sh

#Run Main Function
function main(){
    preLoader&&
    Initialize "${iflutter}" app
}
#Additional Options
if [[ $1 == "--setup" ]]; then
    setUp
    fi
if [[ $1 == "--fallback" ]]; then
    fallback
    fi
if [[ $1 == "--setpath" ]]; then
    environment
    fi
if [[ $1 == "--pickfile" ]]; then
    filepicker
    fi
if [[ $1 == "--extra" ]]; then
    fallbackSetUp
    fi
if [[ $1 == "--help" ]]; then
    showHelp
    fi
if [[ $1 == "--about" ]]; then
    aboutMe
    fi
    main
