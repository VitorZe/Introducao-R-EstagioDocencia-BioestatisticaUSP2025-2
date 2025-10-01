# Aula 01 - Introdução ao R
# 
# -----------------------------------------------------

# Comentários em R começam com "#"
# Você pode usar o console (embaixo) para rodar linhas soltas
# ou salvar seus códigos em arquivos .R (como este).
# Geral: Nao precisa decorar nada, só lembrar que da pra fazer

#O que da pra fazer?
##  Operações matemáticas básicas
2 + 2
5 * 3
10 / 2
2^3


#Outros são funções, que recebem um valor e resultam em outro
log(2) #Logarítmo 
log(c(2, 3, 4))
sum(c(2,3,4)) #Somatório
sqrt(2) #Raiz quadrada

#Podemos criar variaveis, ao dizer ao R que o objeto criado é (<-) alguma coisa

peso <- 50
peso+peso
pesos <- c(50, 20, 34, 26)
alturas <- c(1.60, 1.70, 1.65)


pesos/alturas^2
altura <- 1.60 #Altura é 1.60



#podemos aplicar as mesmas operações e funções
#pegar uma variável, e dividir pelo quadrado da outra
IMC <- peso/altura^2
IMC

#Estatística descritiva e funções
#dado um conjunto de idades, podemos computar diversas estatísticas descritivas



median(c(23, 22, 50, 12))



##EXTRA, saída mais bonitinha: função cat(), concatena objetos, nesse caso, textos e variáveis
# Vetores
## São objetos com mais de um valor armazenado
idades <- c(
  18, 19, 20, 21, 21, 22, 22, 23, 23, 24,
  24, 25, 25, 25, 26, 26, 27, 27, 28, 28,
  29, 29, 30, 30, 31, 32, 33, 34, 35, 36
)


plot(idades)
## Missings
### Descreve missings
##
# Funções
mean(idades)  
#Erro

##Argumentos na.rm

## Na documentação, ou na barra de pesquisa, é possivel buscar uma função e ler os argumentos
##Realize operações com o vetor 'idades'


# Funções básicas
mean(idades)     # média
median(idades)   # mediana
sd(idades)       # desvio-padrão
sum(idades)      # somatório

## Crie um vetor, de alguma variável (numérica) que faça parte do seu cotidiano, com 5 ou mais observações


## Descreva esse com as funções básicas


##A média e a mediana foram próximas? se sim, ou se não, você acredita que isso aconteceu por qual razão?
"idades"


# Visualizações
hist(idades, bins = 3) #Histograma
stripchart(idades)
stripchart(idades, method = "stack") #Grafico de pontos
stripchart(idades, method = "stack") #Grafico de pontos empilhados
stripchart(exp(idades), method = "stack", add = TRUE) #Grafico de pontos empilhados

boxplot(idades, horizontal = TRUE,
        main = "Titulo uno",
        xlab = "Eixo x",
        yab = "Eixo y",
        col = "steelblue")
stripchart(idades, 
           method = "stack", 
           pch = 1,
           add = TRUE,
           main = "") #Grafico de pontos empilhados

boxplot(idades, horizontal = T)
stripchart(idades, 
           method = "jitter", 
           pch = 19,
           add = T) #Grafico de pontos empilhados



# O conceito de 'working directory
## É onde vai ser a sua área de trabalho, fisicamente, no seu computador
## Enão você pode ir para o painel superior, no rstudio e seguir os passos
## "Session" -> "Set Working Directory" -> "To source file location"
## Assim, agora os arquivos que você for abrir, ou salvar, estarão no mesmo lugar



# Trabalhando com dados (iremos explorar mais na Aula 2)
dados <- read.csv("https://raw.githubusercontent.com/VitorZe/Introducao-R-PAE-BioestatisticaNutricao/refs/heads/main/dados/dadosNutri.csv")
#setwd("/Caminho/daSua/Pasta")

#head() vai trazer as 5 primeiras observações
head(dados)
tail(dados)
#View() vai trazer a visualização em formato de tabela em outra aba
View(dados)

dados$sexo


table(dados$sexo)
# INVESTIGAÇÃO
hist(dados$peso)
hist(dados$altura)

boxplot(dados$altura, horizontal = TRUE)


boxplot(dados[dados$sexo == "F", "altura"], horizontal = TRUE)


dados[dados$altura <= 1, 'altura'] <- 1.82

#Util para variaveis quantitativas
summary(dados)
#Util para variaveis qualitativas
table(dados$sexo)

cor(x = dados$peso, y = dados$altura)

#Investigando peso e altura
summary(dados$peso)
summary(dados$altura)


boxplot(dados$altura, 
        horizontal = TRUE,
        main = "distribuição das alturas")
##Ajustar
## Aqui vemos como selecionar, usamos os "[]"
dados[dados$altura > 2.5, ]
# " | " se refere a um "OU" outro, podemos usar o &, que seria um "E" outro
#">=" ou "<=" para menor ou igual a, "<" e ">" maior ou menor que
#"!= (! = sem espaço)" para "diferente de ou "=="  para "igual a"
dados[dados$altura > 2.5 | dados$altura < 1.3, ]




#dados[filtro para linhas, filtro para colunas]
#aqui escolhemos a coluna"altura" e selecionamos a linha onde a altura é igual a 18.95
#poderiamos escolher a coluna "sexo" onde a altura fosse igual a 18.95
dados$sexo[dados$altura == 18.95]
dados$altura[dados$altura == 18.95] <- 1.895
dados[dados$altura == 18.95, ]




dados$altura

boxplot(dados$peso, 
        horizontal = TRUE,
        main = "distribuição do peso",
        xlab = "Peso (kg)")

#Avaliando a relação entre peso e consumo diario de proteina em gramas
plot(dados$peso, dados$proteina_g)

dados[dados$peso > 90,]

#Busque o outro outlier e corrija
plot(dados$peso, dados$altura)
#
# boxplot(x, grupo)
## 

# Selecionar Coluna

# Selecionar linha

# Selecionar observação (Coluna x Linha)

# Seleção condicional df[df[, a] == "x",]
#Operações
## Generalizadas
###

## Singulares
###

## Condicionais
###

