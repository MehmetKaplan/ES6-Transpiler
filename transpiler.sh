#!/bin/bash
  
if [ $# -ne 1 ]; then
        echo -e "\n\n\n\n\t\t\t\E[37mUsage:\n\n\n\t\t\E[34mtranspiler.sh \E[36mPATH-TO-DIRECTORY-OR-SINGLE-SOURCE-IN-ES6\E[31m\n\n\n"
else
	echo -e "\033[33mCleaning: \033[31m./src/\033[37m"
	rm -r ./src
	mkdir src
	echo -e "\033[33mCleaning: \033[31m./build/\033[37m"
	rm -r ./build
	mkdir build
	
	command="cp -r $1* ./src/"
	echo -e "\033[33mExecuting: \033[31m$command\033[37m"
	eval $command
	command="yarn build"
	echo -e "\033[33mExecuting: \033[31m$command\033[37m"
	eval $command
fi
