#!/bin/bash



# Verificador de Dependências Instalas
# escrito por TheNuke

###########################Configurações#########################
logo="banner"

#cores
cyan="\033[0;36m"
blue="\033[1;34m"
red="\033[1;31m"
reseted="\033[0m"

banner ()
{
clear
echo 
echo
echo -e "$cyan \n

			 #     # ######  ### 
			 #     # #     #  #  
			 #     # #     #  #  
			 #     # #     #  #  
			  #   #  #     #  #  
			   # #   #     #  #  
			    #    ######  ### "    
echo "				Escrito por TheNuke"                 
echo -e "$reseted"
}

#########################start#################################

menu ()
{
$logo
echo
echo
echo
echo "				Verificando instalação do $programa"

echo -e "			1) Verificar se o$cyan $programa$reseted está instalado"
echo -e "			2) Testar$red Outra$reseted dependência"
echo -e "$red			0) Sair$reseted"

	while :
		do
	read -p "Opção: " -n 1 pergunta2
	echo
	case $pergunta2 in

	1) 		if ! hash $programa 2>/dev/null; then
		echo
		echo -e "$red Dependência não instalada$reseted"
		sleep 3
		menu

	else
		echo
		echo -e "$blue Dependência instalada$reseted"
		sleep 3
		menu
	fi
		;;

	2)	intro;;

	0) 	$logo
		echo -e "			$cyan Obrigado por utilizar o VDI!!!$reseted"
		sleep 3;
		clear;
		exit;;

	*) echo -e "$red Opção Inválida!$reseted"
		sleep 1
		menu;;
esac
done

}
###########################################################################
intro ()
{
$logo
echo
echo
echo
read -p "Qual dependência deseja verificar se está instalada?: " programa
echo

	while :
		do	
	read -p "Deseja continuar? S/n: " -n 1 pergunta
	echo
	case $pergunta in
	
	S|s) 	clear;
		menu;;

	N|n)	echo "Voltando ao Inicio!"
		sleep 2;
		clear;
		intro;;

	*)	echo "Resposta Inválida!"
		sleep 1;
		echo;
		echo "Voltando ao Inicio!"
		sleep 1;
		clear;
		intro;;
esac
done

}
intro
##############################FIM#################################
menu
