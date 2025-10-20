# ============================================================
# 🔄 update_github.R
# Automatiza commit + push + abre o repositório no GitHub
# Bruno Peixoto | 2025
# ============================================================

# Define o diretório do projeto
setwd("C:/Users/35196/Desktop/oasis_predict")

# 1️⃣ Mostrar status
cat("\n📦 Checking current Git status...\n")
system("git status")

# 2️⃣ Adicionar todos os ficheiros modificados
cat("\n➕ Adding all updated files...\n")
system("git add .")

# 3️⃣ Commit com mensagem personalizada
commit_msg <- readline(prompt = "📝 Enter commit message: ")
if (commit_msg == "") commit_msg <- "Update OASIS2 pipeline and results"
cat("\n💾 Committing changes...\n")
system(paste0('git commit -m "', commit_msg, '"'))

# 4️⃣ Fazer pull (rebase)
cat("\n🔄 Pulling latest changes (rebase)...\n")
system("git pull --rebase origin main")

# 5️⃣ Enviar para GitHub
cat("\n🚀 Pushing updates to GitHub...\n")
system("git push origin main")

# 6️⃣ Abrir automaticamente o repositório no navegador
cat("\n🌐 Opening GitHub repository in your browser...\n")
browseURL("https://github.com/peixotopsi-ctrl/oasis_predict")

cat("\n✅ Repository updated successfully!\n")

