#!/bin/bash

# INPUT é o arquivo *.inp para rodar o ORCA

INPUT=$1

# configurando as variáveis de ambiente, caminho od executável do ORCA e bibliotecas

ORCA="/drives/c/Orca/orca.exe"

echo "running orca ..."

# rodando o ORCA

nohup $ORCA $1  >& ${1%.*}.out &

echo "end job"
 

