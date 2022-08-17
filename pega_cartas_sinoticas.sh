!/bin/bash

dia='12'

while [ ${dia} -le 17 ]; do
	wget -r -P /media/extra/ http://img0.cptec.inpe.br/~rgptimg/Produtos-Pagina/Carta-Sinotica/Analise/Altitude/altitude_201103${dia}00.gif

let dia=dia+1;

done
~             
#https://www.marinha.mil.br/chm/sites/www.marinha.mil.br.chm/files/cartas-sinoticas/c2208${dia}00.png

