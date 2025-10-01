# Aula 02 - Importação de dados
# Curso: Introdução ao R para Nutrição e Metabolismo (USP)
# -----------------------------------------------------

# Ler arquivos CSV
dados <- read.csv("dados/dieta.csv")

# Ver as primeiras linhas
head(dados)

# Estrutura do data.frame
str(dados)

# Resumo estatístico
summary(dados)

# Acessar colunas
dados$idade
dados$peso
