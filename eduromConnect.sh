read -p "Matricula: " Matricula
read -sp "Senha: " Senha
echo 

nmcli connection add type wifi con-name eduroam ifname wlp2s0 ssid "eduroam" -- wifi-sec.key-mgmt wpa-eap 802-1x.eap ttls 802-1x.identity "$Matricula" 802-1x.password "$Senha" 802-1x.phase2-auth mschapv2

