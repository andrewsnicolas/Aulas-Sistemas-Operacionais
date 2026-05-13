## `jobs`
Mostra os processos/aplicações em execução no shell atual.

```shell
$ jobs
[1]  Running                 sleep 1000
````

---

## `fg` — Foreground

Traz um processo para o primeiro plano.

```shell
fg %numero_do_processo
```

Exemplo:

```shell
fg %1
```

---

## `bg` — Background

Continua a execução de um processo em segundo plano.

```shell
bg %numero_do_processo
```

Exemplo:

```shell
bg %1
```

---

## Atalhos de Controle de Processos

| Atalho     | Função                      |
| ---------- | --------------------------- |
| `Ctrl + C` | Cancela/finaliza o processo |
| `Ctrl + Z` | Suspende/pausa o processo   |

---

## `find`

Procura arquivos e diretórios.

### Procurar um arquivo específico

```shell
find / -name "nome_do_arquivo"
```

Exemplo:

```shell
find / -name "teste.txt"
```

> O `/` indica que a busca será feita em todo o sistema.

---

# Máscaras

| Símbolo | Significado                   |
| ------- | ----------------------------- |
| `?`     | Representa um único caractere |
| `*`     | Representa vários caracteres  |

Exemplos:

```shell
ls arquivo?.txt
```

```shell
ls *.txt
```

---

## `alias`

Cria apelidos para comandos.

### Sintaxe

```shell
alias apelido="comando"
```

### Exemplo

```shell
alias atualizar="sudo apt update && sudo apt upgrade"
```

```
```