cont=1;
saida = "";
echo -e "\033[7;36mOla, bem vindo!\033[0m"
while [[ "$cont" -le 10 ]]
do
saida+="$cont ";
cont=$((cont+1));
done
echo "Resultado: $saida";
