#!/bin/bash

#criando diretorios
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

#Criamnd0 Grupos 
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#criando usuarios ADM
useradd  carlos -c "Carlos lisboa"  -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_ADM
useradd  maria -c "Maria lisboa"  -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_ADM
useradd  joao -c "Joao lisboa"  -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_ADM

#Criar usuarios VEN
useradd  debora -c "Debora lisboa"  -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_VEN
useradd  sebastiana -c "Sebastiana lisboa"  -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_VEN
useradd  roberto -c "Roberto lisboa"  -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_VEN

#criar Usuarios SEC
useradd  josefina -c "Josefina lisboa"  -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_SEC
useradd  amanda -c "Amanda lisboa"  -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_SEC
useradd  rogerio -c "Rogerio lisboa"  -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_SEC

#adicionar  usuarios e grupo no diretrorios
chown root:GRP_ADM
chown root:GRP_VEN
chown root:GRP_SEC

#adicionar permissão
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec
chmod 777 /publico
