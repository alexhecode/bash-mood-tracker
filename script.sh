#!/bin/bash

echo "____    __    ____  _______  __        ______   ______   .___  ___.  _______  __ "
echo "\   \  /  \  /   / |   ____||  |      /      | /  __  \  |   \/   | |   ____||  |"
echo " \   \/    \/   /  |  |__   |  |     |  ,----'|  |  |  | |  \  /  | |  |__   |  |"
echo "  \            /   |   __|  |  |     |  |     |  |  |  | |  |\/|  | |   __|  |  |"
echo "   \    /\    /    |  |____ |  |----.|  |----.|  |--|  | |  |  |  | |  |____ |__|"
echo "    \__/  \__/     |_______||_______| \______| \______/  |__|  |__| |_______|(__)"
                                                                                  
echo -e "\n"
echo "This script will create the file 'mood-tracker.txt' in your terminal's default directory"

file=mood-tracker.txt
if test -f "$file" 
    then
        echo "$file found! Initialising..."
    else
        echo "$file not found! Creating file..."
        touch mood-tracker.txt
fi

echo -e "\n"
echo -e "\n"

echo "What emotion are you feeling right now?"
echo -e "\n"
echo "Please select an emotion below using the number keys!"
echo -e "\n"
echo "(1: 😡 Anger) (2: 🤢 Disgust) (3: 😱 Fear) (4: 😭 Sadness) (5: 😁 Happiness) (6: 😯 Surprise)"
echo -e "\n"

read feeling

if [ $feeling = 1 ] 
    then
        dt=$(date '+%d/%m/%Y %r')
        echo "$dt: I felt angry 😡" >> mood-tracker.txt
        echo -e "\nLet it go mate! Things will get better! 🙌"

elif [ $feeling = 2 ] 
    then
        dt=$(date '+%d/%m/%Y %r')
        echo "$dt: I felt disgusted 🤢" >> mood-tracker.txt
        echo -e "\nTake a sip of water! 🚰"

elif [ $feeling = 3 ] 
    then
        dt=$(date '+%d/%m/%Y %r')
        echo "$dt: I felt scared 😱" >> mood-tracker.txt
        echo -e "\nTalk to a friend or sibling! 🤗"

elif [ $feeling = 4 ] 
    then
        dt=$(date '+%d/%m/%Y %r')
        echo "$dt: I felt sad 😭" >> mood-tracker.txt
        echo -e "\nThink happy thoughts! You can get through this! 🙂"

elif [ $feeling = 5 ] 
    then
        dt=$(date '+%d/%m/%Y %r')
        echo "$dt: I felt happy 😁" >> mood-tracker.txt
        echo -e "\nWell, good on you! 😛"

elif [ $feeling = 6 ] 
    then
        dt=$(date '+%d/%m/%Y %r')
        echo "$dt: I felt surprised 😯" >> mood-tracker.txt
        echo -e "\nWOW! 🎉"
# else
#     echo "Please enter a number between 1-6"
#     echo -e "\n"
#     read feeling
fi

echo -e "\n"
echo "Would you like to read mood-tracker.txt? (y / n)"
echo -e "\n"


read response

if [ $response = y ]
    then
        open mood-tracker.txt
elif [ $response = n ]
    then
        echo -e "\n"
        echo "Thanks for checking in!"
# else
#     echo "Please enter a valid response (y / n)"
#     echo -e "\n"
#     read response
fi
