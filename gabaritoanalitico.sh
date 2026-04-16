while true
do
echo -e "\033[0;35m************************************************\033[0m";
echo -e "\033[0;35m***********O que você deseja fazer?*************\033[0m";
echo -e "\033[0;35m***********1) Mostrar data do sistema***********\033[0m";
echo -e "\033[0;35m***********2) Mostrar o usuário logado**********\033[0m";
echo -e "\033[0;35m***********3) Sair do sistema*******************\033[0m";
echo "";
echo "R:                                               "
read op;
case $op in
	"1") 
		echo -e "Agora são: \033[1;32m$(date +"%d/%m/%Y")\033[0m";
		;;
	"2")
		whoami;
		;;
	"3")
		echo -e "\033[0;31m************Saindo...*************\033[0m";
		sleep 2;
		break;
		;;
	*)
		echo "Valor inválido para digitar";
		;;
	esac

done
