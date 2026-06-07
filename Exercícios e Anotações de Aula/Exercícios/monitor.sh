#DOJO1
#mkdir LAB_OS;
#cd LAB_OS;
#mkdir scripts logs;
#touch monitor.sh

#DOJO2
while true; do
	echo "************BEM VINDO AO MENU DOJO****************";
	echo "1) Mostrar todos os arquivos da pasta LAB_OS";
	echo "2) Exibir os 5 processos que mais usam CPU";
	echo "3) Encerrar um processo";
	echo "4) Sair do script";
	read opcao;
	case "$opcao" in
		1)
			ls -al ~/LAB_OS;
		;;
		2)
			ps aux --sort=-%cpu | head -n 6;
		;;
		3)
			echo "Digite o nome de um programa";
			read nomePrograma;
			PID=$(pgrep -o "$nomePrograma");
			if [-n "$PID" ]; then
				sudo kill "$PID";
			else
				echo "Processo não encontrado";
			fi
		;;
		4)
			break;
		;;
		*)
			echo "Número inválido";
		;;
	esac
done
