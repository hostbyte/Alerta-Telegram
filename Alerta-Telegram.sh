#!/bin/bash
# Autor: Alessandro Almeida
# E-mail: alessandro@ipshost.com.br
# Telefone: (53) 8125-9194
# Website: https://www.isphost.com.br

# Script check ping para vericaficar se o equipamento está online
# A verificação dos ips fica na lista "ips_lista.txt"
# Caso esteja offline, encaminha o ip para uma lista (Alerta.txt) de ip offline
# Logo após enviar para lista o ip offline,
# O script acessa o diretorio onde se encontra os arquivos do Telegram e um outro script
# Esse script (Envia-Alerta) envia a mensagem via Telegram contendo o arquivo com o ip offline

# Checando ips com ping
IP_CHECK="ip_lista.txt"
for Check in $( cat $IP_CHECK )
do
ping -q -c2 $Check > /dev/null

if [ $? -eq 0 ]
then
# IPs que respondem ao ping, apenas mostra a mensagem de Online
echo $Check "Online"
else
# IPs que não respondem a ping, mostra a mensagem offline e é encaminhado para lista Alerta.txt
echo $Check "Offline" > Alerta.txt
# Acessando diretório do Telegram e executando o script Envia-Alerta
# O "Alerta Telegram" será a primera mensagem enviada pelo Telegram, logo após ele enviara o ip com o texto Offline
cd tg && ./Envia-Alerta "Alerta Telegram"
# Limpando a lista Alerta.txt
echo > Alerta.txt
fi
done
