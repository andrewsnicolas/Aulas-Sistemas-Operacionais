senha=" ";

while [[ $senha != "Batata" ]]
do
	echo "Digite a senha para entrar no sistema";
	read senha;
done
echo -e "\033[0;32mAcesso liberado\033[0m";
