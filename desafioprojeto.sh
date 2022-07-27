#!/bin/bash
echo "Desafio de projeto do bootcamp Linux insider"
mkdir publico adm ven sec &
groupadd GRP_ADM &
groupadd GRP_VEN &
groupadd GRP_SEC &
useradd -m -G GRP_ADM -p $(openssl passwd 123) -s /bin/bash carlos &
useradd -m -G GRP_ADM -p $(openssl passwd 123) -s /bin/bash maria  &
useradd -m -G GRP_ADM -p $(openssl passwd 123) -s /bin/bash joao &
useradd -m -G GRP_VEN -p $(openssl passwd 123) -s /bin/bash debora &
useradd -m -G GRP_VEN -p $(openssl passwd 123) -s /bin/bash sebastiana &
useradd -m -G GRP_VEN -p $(openssl passwd 123) -s /bin/bash roberto &
useradd -m -G GRP_SEC -p $(openssl passwd 123) -s /bin/bash josefina &
useradd -m -G GRP_SEC -p $(openssl passwd 123) -s /bin/bash amanda &
useradd -m -G GRP_SEC -p $(openssl passwd 123) -s /bin/bash rogerio &
chown root:GRP_ADM adm &
chown root:GRP_VEN ven &
chown root:GRP_SEC sec &
chmod 777 /publico &
chmod 770 /adm &
chmod 770 /ven &
chmod 770 /sec &

exit 0
