#!/bin/bash
# outputs days since birth and ASCII art

BIRTHDATE="991231"
LIFETIME=$(echo -e $(( ($(date +%s) - $(date --date="$BIRTHDATE" +%s) )/(60*60*24) )))
RED="\033[31m"
RESET="\033[0m"
echo
echo -e "${RED}            ▞▚"
echo -e "     ━━━▚  ▞  ▚━━━     ${RESET}You're alive since ${RED}${LIFETIME}${RESET} days"
echo -e "${RED}         ▚▞    "
echo -e "${RESET}"
