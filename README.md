# Alerta-Telegram

Primeiro você deve instalar o Telegram que está aqui mesmo no github, segue o link abaixo:

https://github.com/vysheng/tg

Após instalar o Telegram, realize os testes para verificar se o mesmo está funcionando como deveria.

Preste bastante atenção, pois dependendo da sua instalação deve-se alterar alguns diretórios.

Aqui usei o diretório /root, mas nada impede que use o diretório do seu usuário.

O script Alerta-Telegram.sh e o Envia-Alerta.sh tem que ser aberto e editado para fazer as alterações de sua necessidade.

Essas alterações são o diretório onde ficou sua instalação do Telegram e o usuário ou grupo que vai receber os alertas.

Basta especificar os diretórios corretamente.

Mova os arquivos Alerta-Telegram.sh e o Envia-Alerta.sh para a pasta "tg" onde está instalado o Telegram.

# Faça o agendamento no cron

*/10  * * * cd tg && ./Alerta-Telegram.sh

*obs: o acesso ao diretório "tg" do Telegram, pode ou deve ser alterado para o correto.
Exemplo: cd /home/usuário/tg





