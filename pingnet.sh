#!/bin/bash
#Opa! caso esteja lendo isto este é um dos meus primeiros script's em bash que eu fiz para meu curso de pentest caso tenha interesse em entender bash lembrando que isto é muito simples! não espero algo avançado em breve postarei
if [ "$1" == "" ] #verifica se o usuario colocou o host
then
echo "Exemplo de uso: $0 10.0.0" 
else
for teste in {1..254};do #cria uma repetição na variavel e aplica numeros de 1 a 254 com o intuito de fazer uma conexão
text="Conexão feita!"
ping -c1 $1.$teste | grep "64 bytes" | cut -d " " -f 4 | sed 's/.$//' #faz o ping no ip e limpa as informações para ficar bom de enchergar na tela
done
fi


