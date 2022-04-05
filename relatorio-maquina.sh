#!/bin/bash

###################################################
#autor: Beatriz Miranda
#data: 05/04/2022
#o script gera um relatório da máquina contendo:

# Nome da Máquina
# Data e Hora Atual
# Desde quando a máquina está ativa
# Versão do Kernel
# Quantidade de CPUs/Cores
# Modelo da CPU
# Total de Memória RAM Disponível
# Partições 

###################################################

#definindo as variáveis necessárias:
KERNEL=$(uname -r) # versao do kernel

HOSTNAME=$(hostname) #hostname da maquina

NUMCPU=$(cat /proc/cpuinfo |grep "model name"|wc -l) 
#o cat procura dentro de /proc/cpuinfo as informacoes referentes a "model name,e depois o wc -l printa quantas linhas foram retornada, que nesse caso corresponde a quantidade de cpu ativas

CPUMODEL=$(cat /proc/cpuinfo |grep "model name"|head -n1|cut -c14-) 
#o cat procura dentro de /proc/cpuinfo as informacoes referentes a "model name" e com o head -n1 peço para que seja mostrada apenas a primeira linha de resultado. A partir disso, com o cut -c14- faço apenas um corte para retornar apenas o nome da cpu 

MEMTOTAL=$(expr $(cat /proc/meminfo |grep MemTotal|tr -d " "|cut -d: -f2|tr -d kB) / 1024) 
#retorna a memoria total da maquina em MB transformando o valor total em kB contido em MemTotal

FILESYSTEM=$(df -h|egrep -v '(tmpfs|udev|/dev/loop)') 

UPTIME=$(uptime -s)

clear
echo "====================================================================="
echo "Relatório da Máquina $HOSTNAME"
echo "Data/Hora: $(date)"
echo "====================================================================="
echo ""
echo "Máquina ativa desde: $UPTIME"
echo ""
echo "Versão do Kernel: $KERNEL"
echo ""
echo "CPUs:"
echo "Quantidade de CPUs/CORE: $NUMCPU"
echo "Modelo da CPU: $CPUMODEL"
echo ""
echo "Memória total: $MEMTOTAL MB"
echo ""
echo "Partições:"
echo "$FILESYSTEM"
echo ""
echo "====================================================================="

