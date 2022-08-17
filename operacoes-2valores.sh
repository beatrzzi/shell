#!/bin/bash
##########################################################
# operações com 2 valores
# autor: beatriz miranda
# data: 14/04/2022
# descrição: 
#
##########################################################
#
# seleção dos valores pelo usuario
read -p "Informe o valor 1: " var1
read -p "Informe o valor 2: " var2
#
if [ ! $var1 ] | [ ! $var2 ]
then
	echo "Nenhum dos valores pode ser nulo /:"
	exit 1
fi
#
echo
echo "Escolha uma operação:"
echo "1 = SOMA"
echo "2 = SUBTRAÇÃO"
echo "3 = MULTIPLICAÇÃO"
echo "4 = DIVISÃO"
echo "5 = SAIR"
echo
read -p "Operação:" OPERACAO
echo
#
#
#pre definindo as operações possiveis
SOMA=$(($var1+$var2))
SUB=$(($var1-$var2))
MULT=$(($var1*$var2))
DIV=$(($var1/$var2))
RESTO=$(($var2%$var2))
#
#
case $OPERACAO in
	1)
		echo $SOMA
		;;
#
	2)
		echo $SUB
		;;
#	
	3)
		 if [ $var1 -eq 0 -o $var2 -eq 0 ]
		 then
			 echo "Operação inválida! /:"
			 exit 2
		 else 
			 echo $MULT
		 fi
		 ;;
	
	4) 	
		if [ $var1 -eq 0 -o $var2 -eq 0 ]
                then
                        echo "Operação inválida! /:"
                        exit 3
		fi
#
		if [ $RESTO -gt 0 ]
		then
			echo $DIV "com resto = "$RESTO
		else
			echo "Divisão exata = "$DIV
		fi
		;;
#
	5)
		echo "Saindo..."
		exit
		;;
#
	*) 
		echo "Opção inválida!"
		exit 4
		;;
esac
