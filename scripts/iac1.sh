#!/bin/bash

echo "Criando os Diretórios"

mkdir /publico
mkdir /administrativo
mkdir /vendas
mkdir /secretariado
mkdir /diretoria
mkdir /gerencia

echo "Criando grupos de usuário"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
groupadd GRP_DIRE
groupadd GRP_GERE

echo "Criação de usuarios..."

useradd carlos -c "Carlos Souza Bastos" -s /bin/bash -m -G GRP_ADM && echo "carlos:senha123" | chpasswd && passwd -e carlos
useradd maria -c "Maria Santos Silva" -s /bin/bash -m -G GRP_ADM && echo "maria:senha123" | chpasswd && passwd -e maria
useradd joao -c "Joao dos Santos Silva" -s /bin/bash -m -G GRP_ADM && echo "joao:senha123" | chpasswd && passwd -e joao
useradd jose -c "Jose dos Santos Silva" -s /bin/bash -m -G GRP_ADM && echo "jose:senha123" | chpasswd && passwd -e jose
useradd alessandra -c "Alessandra Teixeira" -s /bin/bash -m -G GRP_ADM && echo "alessandra:senha123" | chpasswd && passwd -e alessandra

useradd debora -c "Debora Neves" -s /bin/bash -m -G GRP_VEN && echo "debora:senha123" | chpasswd && passwd -e debora
useradd sebastiana -c "Sebastiana Teixeira" -s /bin/bash -m -G GRP_VEN && echo "sebastiana:senha123" | chpasswd && passwd -e sebastiana
useradd roberto -c "Roberto Cunha" -s /bin/bash -m -G GRP_VEN && echo "roberto:senha123" | chpasswd && passwd -e roberto
useradd joana -c "Joana Cunha" -s /bin/bash -m -G GRP_VEN && echo "joana:senha123" | chpasswd && passwd -e joana
useradd helena -c "Helena Figuereido Santos" -s /bin/bash -m -G GRP_VEN && echo "helena:senha123" | chpasswd && passwd -e helena

useradd josefina -c "Josefina Figuereido Santos" -s /bin/bash -m -G GRP_SEC && echo "josefina:senha123" | chpasswd && passwd -e josefina
useradd amanda -c "Amanda Dantas" -s /bin/bash -m -G GRP_SEC && echo "amanda:senha123" | chpasswd && passwd -e amanda 
useradd rogerio -c "Rogerio Souza" -s /bin/bash -m -G GRP_SEC && echo "rogerio:senha123" | chpasswd && passwd -e rogerio
useradd renata -c "Renata Dantas" -s /bin/bash -m -G GRP_SEC && echo "renata:senha123" | chpasswd && passwd -e renata
useradd andressa -c "Andressa Fontes" -s /bin/bash -m -G GRP_SEC && echo "andressa:senha123" | chpasswd && passwd -e andressa

useradd roger -c "Roger Ventura" -s /bin/bash -m -G GRP_DIRE && echo "roger:senha123" | chpasswd && passwd -e roger

useradd antonio -c "Antônio Garibaldi" -s /bin/bash -m -G GRP_GERE && echo "antonio:senha123" | chpasswd && passwd -e antonio
useradd olivia -c "Olivia Blesser" -s /bin/bash -m -G GRP_GERE && echo "olivia:senha123" | chpasswd && passwd -e olivia

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /administrativo
chown root:GRP_VEN /vendas
chown root:GRP_SEC /secretariado
chown root:GRP_DIRE /diretoria
chown root:GRP_GERE /gerencia

chmod 770 /administrativo
chmod 770 /vendas
chmod 770 /secretariado
chmod 770 /diretoria
chmod 770 /gerencia
chmod 777 /publico

echo "Fim..."



