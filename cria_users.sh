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

# Definindo a mesma senha para todos
SENHA = NovaSenha2026

echo "Criando adms..."
useradd hugo -m -s /bin/bash -p $(openssl passwd -crypt $SENHA) -G GRP_ADM
useradd lucas -m -s /bin/bash -p $(openssl passwd -crypt $SENHA) -G GRP_ADM
useradd pedro -m -s /bin/bash -p $(openssl passwd -crypt $SENHA) -G GRP_ADM

echo "Criando time de vendas..."
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt $SENHA) -G GRP_VEN
useradd joaquina -m -s /bin/bash -p $(openssl passwd -crypt $SENHA) -G GRP_VEN
useradd mario -m -s /bin/bash -p $(openssl passwd -crypt $SENHA) -G GRP_VEN

echo "Criando time de secretariado..."
useradd mateus -m -s /bin/bash -p $(openssl passwd -crypt $SENHA) -G GRP_SEC
useradd geovanna -m -s /bin/bash -p $(openssl passwd -crypt $SENHA) -G GRP_SEC
useradd gabriel -m -s /bin/bash -p $(openssl passwd -crypt $SENHA) -G GRP_SEC

echo "Especificando permissões dos diretórios para cada time..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Script Finalizado!"

