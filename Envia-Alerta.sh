#!/bin/bash
# Autor: Alessandro Almeida
# E-mail: alessandro@ipshost.com.br
# Telefone: (53) 8125-9194
# Website: https://www.isphost.com.br

# Substituir 'to' com o nome da conta ou grupo

to=Usuário ou Grupo que vai receber os alertas


function show_usage {

        echo "Usage $0 [message]"
        exit
}




if [ $# -lt 1 ]
then
  show_usage
fi

(echo "contact_list";sleep 10;echo "msg $to $1"; echo "contact_list";sleep 10; echo "send_text $to Alerta.txt"; echo "safe_quit") | Telegram
