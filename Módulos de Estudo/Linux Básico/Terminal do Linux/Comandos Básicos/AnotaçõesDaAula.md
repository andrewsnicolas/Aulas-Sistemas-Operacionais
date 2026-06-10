# Comandos Básicos do Terminal

---

## O que é um parâmetro?

O que é um **parâmetro** (também chamado de *flag* ou *opção*)?

Quando você digita um comando, pode passar informações extras para ele funcionar de um jeito diferente. Essas informações extras são os parâmetros. Eles geralmente começam com um traço `-` ou dois traços `--`.

Por exemplo:

```bash
ls -l
```

Aqui, `ls` é o comando e `-l` é o parâmetro. Sem o parâmetro, o comando faz a coisa básica. Com o parâmetro, ele faz a mesma coisa, mas com algum detalhe a mais (nesse caso, mostra mais detalhes dos arquivos).

Pensa assim: o comando é o verbo ("listar"), e o parâmetro é o advérbio ("listar *com detalhes*").

---

## Os Comandos

### `pwd` — Onde estou?

**Print Working Directory** — mostra o caminho completo da pasta em que você está no momento.

```bash
pwd
# Saída: /home/usuario/documentos
```

Esse é simples, não tem muitos parâmetros. Você usa ele principalmente quando fica perdido e precisa saber em qual pasta está.

---

### `ls` — O que tem aqui?

**List** — lista os arquivos e pastas do diretório atual (ou de um diretório que você indicar).

```bash
ls              # lista o conteúdo da pasta atual
ls /home        # lista o conteúdo da pasta /home
```

**Parâmetros comuns:**

| Parâmetro | O que faz |
|-----------|-----------|
| `-l` | Mostra a lista com detalhes (permissões, tamanho, data) |
| `-a` | Mostra arquivos ocultos (os que começam com `.`) |
| `-h` | Mostra tamanhos de arquivo de forma legível (KB, MB...) |
| `-la` ou `-al` | Combina `-l` e `-a` ao mesmo tempo |

```bash
ls -l           # lista detalhada
ls -a           # mostra arquivos ocultos
ls -la          # lista detalhada + arquivos ocultos
```

> Dica: você pode combinar vários parâmetros de uma vez, como no `-la` acima.

---

### `cd` — Mudar de pasta

**Change Directory** — navega entre as pastas.

```bash
cd documentos           # entra na pasta "documentos"
cd /home/usuario        # vai direto para esse caminho absoluto
cd ..                   # volta uma pasta acima
cd ~                    # vai para a pasta do usuário (home)
cd -                    # volta para a última pasta que você estava
```

O `cd` não tem muitos parâmetros, mas os atalhos acima são muito usados no dia a dia. O `..` é especialmente útil — dois pontos significa "pasta mãe" (a pasta que contém a atual).

---

### `mkdir` — Criar uma pasta

**Make Directory** — cria uma nova pasta.

```bash
mkdir projetos                      # cria a pasta "projetos"
mkdir projetos/backend              # cria a pasta "backend" dentro de "projetos"
```

**Parâmetros comuns:**

| Parâmetro | O que faz |
|-----------|-----------|
| `-p` | Cria todas as pastas do caminho de uma vez, mesmo que as intermediárias não existam |

```bash
mkdir -p projetos/backend/src       # cria as três pastas de uma vez
```

Sem o `-p`, se a pasta `projetos` não existir, o comando dá erro. Com o `-p`, ele cria tudo que for necessário.

---

### `touch` — Criar um arquivo vazio

Cria um arquivo vazio. Se o arquivo já existir, atualiza a data de modificação dele (daí o nome "touch", tocar no arquivo).

```bash
touch notas.txt             # cria o arquivo notas.txt
touch arquivo1.txt arquivo2.txt     # cria dois arquivos de uma vez
```

É muito usado para criar arquivos de configuração ou scripts antes de editar.

---

### `echo` — Mostrar texto na tela

Exibe uma mensagem de texto no terminal. Também muito usado para escrever texto dentro de arquivos.

```bash
echo "Olá, mundo!"                  # imprime no terminal
echo "conteúdo" > arquivo.txt       # escreve no arquivo (apaga o que tinha antes)
echo "mais conteúdo" >> arquivo.txt # adiciona ao final do arquivo (sem apagar)
```

Os símbolos `>` e `>>` são chamados de redirecionamentos — eles dizem para onde o texto vai em vez de para a tela.

---

### `cat` — Ver o conteúdo de um arquivo

**Concatenate** — mostra o conteúdo de um ou mais arquivos diretamente no terminal.

```bash
cat notas.txt                       # mostra o conteúdo de notas.txt
cat arquivo1.txt arquivo2.txt       # mostra os dois arquivos em sequência
```

**Parâmetros comuns:**

| Parâmetro | O que faz |
|-----------|-----------|
| `-n` | Numera as linhas |
| `-A` | Mostra caracteres invisíveis (útil para debug) |

```bash
cat -n notas.txt        # mostra o arquivo com número nas linhas
```

---

### `cp` — Copiar arquivos ou pastas

**Copy** — copia um arquivo ou pasta para outro lugar.

```bash
cp notas.txt backup.txt             # copia notas.txt e salva como backup.txt
cp notas.txt /home/usuario/backup/  # copia notas.txt para outra pasta
```

**Parâmetros comuns:**

| Parâmetro | O que faz |
|-----------|-----------|
| `-r` | Copia pastas (é obrigatório para copiar diretórios) |
| `-i` | Pergunta antes de sobrescrever um arquivo |
| `-v` | Mostra o que está sendo copiado (verbose) |

```bash
cp -r projetos/ projetos_backup/    # copia a pasta "projetos" inteira
cp -i notas.txt backup.txt          # pede confirmação se backup.txt já existir
```

> Atenção: sem o `-i`, se o arquivo de destino já existir ele será sobrescrito sem aviso.

---

### `mv` — Mover ou renomear

**Move** — tem dois usos principais: mover arquivos para outro lugar ou renomear um arquivo. A lógica é a mesma nos dois casos — você está mudando o caminho do arquivo.

**Renomear:**
```bash
mv notas.txt anotacoes.txt          # renomeia notas.txt para anotacoes.txt
```

**Mover:**
```bash
mv notas.txt /home/usuario/backup/  # move notas.txt para outra pasta
```

**Mover e renomear ao mesmo tempo:**
```bash
mv notas.txt /home/usuario/backup/anotacoes.txt
```

**Parâmetros comuns:**

| Parâmetro | O que faz |
|-----------|-----------|
| `-i` | Pergunta antes de sobrescrever |
| `-v` | Mostra o que está sendo movido |

> Diferente do `cp`, o `mv` não deixa o arquivo no lugar original — ele some de lá e aparece no destino.

---

### `rm` — Deletar arquivos ou pastas

**Remove** — deleta arquivos. Atenção: **não vai para lixeira**, é permanente.

```bash
rm notas.txt                        # deleta notas.txt
```

**Parâmetros comuns:**

| Parâmetro | O que faz |
|-----------|-----------|
| `-r` | Deleta pastas e todo o conteúdo dentro delas |
| `-i` | Pede confirmação antes de deletar cada arquivo |
| `-f` | Força a exclusão sem pedir confirmação (cuidado!) |

```bash
rm -r projetos/                     # deleta a pasta "projetos" e tudo dentro
rm -i *.txt                         # pede confirmação antes de deletar cada .txt
```

---

## Resumo Rápido

| Comando | O que faz em uma linha |
|---------|------------------------|
| `pwd` | Mostra em qual pasta você está |
| `ls` | Lista o conteúdo da pasta |
| `cd` | Navega entre pastas |
| `mkdir` | Cria uma pasta |
| `touch` | Cria um arquivo vazio |
| `echo` | Exibe texto ou escreve em arquivos |
| `cat` | Mostra o conteúdo de um arquivo |
| `cp` | Copia arquivos ou pastas |
| `mv` | Move ou renomeia arquivos |
| `rm` | Deleta arquivos ou pastas |