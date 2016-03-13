#!/bin/bash
# Autor: Alessandro Almeida
# E-mail: alessandro@ipshost.com.br
# Telefone: (53) 8125-9194
# Website: https://www.isphost.com.br

# Substituir 'user1= e user2=' com o nome da conta que vai receber os alertas.
# Você também pode adicionar mais usuários, basta inserir abaixo:
# Exemplo: user3=fulano e assim por diante.
# Não esqueça de adiciona-los no final do codigo.

user1=Alessandro
user2=Gabriel

function show_usage {

        echo "Usage $0 [message]"
        exit
}




if [ $# -lt 1 ]
then
  show_usage
fi

(echo "contact_list"; sleep 10; echo "msg $user1 $1"; echo "msg $user2 $1"; echo "contact_list"; sleep 10; echo "send_text $user1 /root/Alerta.txt"; echo "send_text $user2 /root/Alerta.txt"; echo "safe_quit") | Telegram
