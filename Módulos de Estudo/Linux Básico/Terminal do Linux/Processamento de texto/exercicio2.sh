#mkdir auditoria && cd "$_"
#"$_" garante que o último parametro seja reutilizado nesse
#torch acessos.log
cd auditoria
cat acessos.log
cat acessos.log > acessos_backup.log
#grep -i ~ ignora upper e lower case
#wc -l ~ conta apenas as linhas

alias contar='wc -l'
alias falhas='grep "FALHA" acessos.log'
grep 'LOGIN' acessos.log
grep 'FALHA' acessos.log
wc -l $(falhas)

cut -s -d ' ' -f 3 acessos.log #Obtém só os nomes
#-s --> Remove as linhas sem delimitador
#-d --> Adiciona o limitador que personalizado
#-f --> Permite especificar o número da coluna

cut -s -d ' ' -f 3 acessos.log | sort
#Faz a organização em ordem alfabética

awk -F ' ' 'seen[$3] {print $3}' acessos.log

awk -F ' ' 'seen[$3] {print $3}' acessos.log | wc -l


awk -F ' ' 'seen[$3] {print $3}' acessos.log | head -n 3
awk -F ' ' 'seen[$3] {print $3}' acessos.log | tail -n 2

less acessos.log # less é o visualizador e paginalizador
#Permite abrir arquivos em formato de página

cat acessos.log | tr '[:upper:]' '[:lower:]'
