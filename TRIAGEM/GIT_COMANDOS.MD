# 📚 Comandos do Git para Iniciantes

Guia rápido e prático com os principais comandos do Git, explicados em **português fácil**.

Ideal para quem está começando e não quer se perder com termos técnicos.

---

## 🧭 1. Começar um Projeto

Comandos para iniciar um repositório ou baixar um do GitHub.

| Comando | O que faz |
|--------|----------|
| `git init` | Cria um novo repositório Git na pasta atual. |
| `git clone <URL>` | Baixa um projeto do GitHub para o seu computador. |

---

## 🛠️ 2. Trabalhar com Arquivos

Comandos para adicionar, remover ou alterar arquivos.

| Comando | O que faz |
|--------|----------|
| `git add .` | Adiciona **todos os arquivos alterados** para o próximo commit. |
| `git add arquivo.txt` | Adiciona **apenas um arquivo** específico. |
| `git rm arquivo.txt` | Remove um arquivo do Git e da pasta. |
| `git mv antigo.txt novo.txt` | Renomeia ou move um arquivo. |
| `git restore arquivo.txt` | Desfaz mudanças em um arquivo (volta ao último commit). |

---

## 💾 3. Salvar Mudanças (Commits)

Comandos para salvar seu progresso com mensagens.

| Comando | O que faz |
|--------|----------|
| `git status` | Mostra o que foi alterado, o que está pronto para salvar. |
| `git commit -m "mensagem"` | Salva as mudanças com uma mensagem (ex: "Corrigido login"). |
| `git commit --amend` | Edita o último commit (útil se esqueceu de algo). |

---

## 🔍 4. Ver o Histórico

Comandos para ver o que já foi feito.

| Comando | O que faz |
|--------|----------|
| `git log` | Mostra todos os commits (quem, quando, mensagem). |
| `git log --oneline` | Mostra o histórico de forma curta e limpa. |
| `git diff` | Mostra exatamente o que mudou nos arquivos. |
| `git show` | Mostra detalhes de um commit específico. |

---

## 🌿 5. Trabalhar com Branches

Branches são "ramos" do projeto (ex: `main`, `dev`, `feature`).

| Comando | O que faz |
|--------|----------|
| `git branch` | Lista todos os branches. |
| `git branch nome` | Cria um novo branch (ex: `git branch dev`). |
| `git switch main` | Muda para o branch `main`. |
| `git switch -c novo` | Cria e entra em um novo branch. |
| `git branch -d nome` | Apaga um branch (só se já foi mesclado). |

---

## 🤝 6. Colaborar com o GitHub

Comandos para enviar e baixar do GitHub.

| Comando | O que faz |
|--------|----------|
| `git pull` | Baixa as últimas alterações do GitHub. |
| `git push` | Envia suas alterações para o GitHub. |
| `git push -u origin main` | Primeiro envio: conecta seu branch local ao remoto. |
| `git fetch` | Verifica se há novas alterações no GitHub (sem baixar ainda). |

---

## 🔁 7. Corrigir Erros Comuns

Comandos úteis quando algo dá errado.

| Comando | O que faz |
|--------|----------|
| `git reset --hard HEAD` | Volta tudo para o último commit. ⚠️ Cuidado: apaga mudanças não salvas! |
| `git reset --soft HEAD~1` | Desfaz o último commit, mas mantém os arquivos prontos. |
| `git merge --abort` | Cancela um merge em andamento (se der conflito). |

---

## 💡 Dicas Rápidas

- Sempre use `git status` antes de fazer qualquer coisa.
- Use mensagens claras nos commits: `"Adicionado login com Google"`, não `"alterações"`.
- Antes de enviar (`push`), sempre faça `git pull` para evitar conflitos.
- Se usar o GitHub Desktop, você evita digitar comandos.

---

> 🎯 **Você não precisa decorar tudo.**  
> Só salve este arquivo e consulte quando precisar.  
> Com o tempo, os comandos entram na cabeça naturalmente.

Feito com ❤️ para você vencer o Git!

