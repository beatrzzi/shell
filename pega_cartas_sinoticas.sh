# autora: beatriz miranda
# script para pegar cartas sinoticas diretamente dos sites das instituições
# loop apenas no dia
# uso: apos fazer o download do script, digite "chmod +x pega_cartas_sinoticas.sh" no seu terminal
# para alterar o intervalo de dias basta modificar no script

!/bin/bash
#marinha: https://www.marinha.mil.br/chm/sites/www.marinha.mil.br.chm/files/cartas-sinoticas/c2208${dia}00.png
#cptec: http://img0.cptec.inpe.br/~rgptimg/Produtos-Pagina/Carta-Sinotica/Analise/Altitude/altitude_201103${dia}00.gif

#exemplo utilizando as cartas do cptec
dia='12'

while [ ${dia} -le 17 ]; do
	wget -r -P /diretorio_para_guardar_cartas/ http://img0.cptec.inpe.br/~rgptimg/Produtos-Pagina/Carta-Sinotica/Analise/Altitude/altitude_201103${dia}00.gif
	
let dia=dia+1;

done
