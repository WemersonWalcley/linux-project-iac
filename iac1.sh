#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -c "Carlos Magno" -s /bin/bash -G GRP_ADM
useradd maria -m -c "Maria de Lourdes da Silva" -s /bin/bash -G GRP_ADM
useradd joao -m -c "João Nunes" -s /bin/bash -G GRP_ADM

useradd debora -m -c "Debora Almeida" -s /bin/bash -G GRP_VEN
useradd sebastiana -m -c "Sebastiana Gomes" -s /bin/bash -G GRP_VEN
useradd roberto -m -c "Roberto Lima" -s /bin/bash -G GRP_VEN

useradd josefina -m -c "Josefina Silva" -s /bin/bash -G GRP_SEC
useradd amanda -m -c "Amanda Nunes" -s /bin/bash -G GRP_SEC
useradd rogerio -m -c "Rogério Mendonça" -s /bin/bash -G GRP_SEC

echo "Criando senha para usuários..."

echo "carlos:senha123" | chpasswd
echo "maria:senha123" | chpasswd
echo "joao:senha123" | chpasswd

echo "debora:senha123" | chpasswd
echo "sebastiana:senha123" | chpasswd
echo "roberto:senha123" | chpasswd

echo "josefina:senha123" | chpasswd
echo "amanda:senha123" | chpasswd
echo "rogerio:senha123" | chpasswd

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."





