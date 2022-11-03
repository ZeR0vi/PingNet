#!/bin/bash
if [ "$1" == "" ] 
then
echo "Exemplo de uso: $0 10.0.0" 
else
for teste in {1..254};do 
text="Conexão feita!"
ping -c1 $1.$teste | grep "64 bytes" | cut -d " " -f 4 | sed 's/.$//' 
done
fi


