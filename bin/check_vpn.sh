# get country initials from vpn service connected to

MULLVAD=$(curl -s https://am.i.mullvad.net/connected)
HIDEME=$(curl -s https://api.hide.me/ip)

if [[ $MULLVAD == *"You are connected"* ]]; then
    COUNTRY=$(echo $SERVER | cut -d " " -f2)
    echo "${COUNTRY:0:2}"
elif [[ $HIDEME == *'isConnected":true'* ]]; then
    COUNTRY=$(echo $HIDEME | awk -v RS=',"' -F: '/^countryCode/ {print $2}' | tr '[:upper:]' '[:lower:]' | sed 's/\(^"\|"$\)//g')
    echo "${COUNTRY}"
elif [[ $(ip a s tun0 up) ]]; then
    echo "?"
else
    echo "no vpn"
fi
