#setwd("/Caminho/daSua/Pasta")


library(openxlsx)

openxlsx::write.xlsx(dados, "nomearquivo.xlsx")

# Trabalhando com dados (iremos explorar mais na Aula 2)
dados <- read.csv("https://raw.githubusercontent.com/VitorZe/Introducao-R-PAE-BioestatisticaNutricao/refs/heads/main/dados/dadosNutri.csv")


#head() vai trazer as 5 primeiras observações
head(dados)
tail(dados)
#View() vai trazer a visualização em formato de tabela em outra aba
View(dados)

dados$sexo

dados$proteina_g


table(dados$sexo)
# INVESTIGAÇÃO
hist(dados$peso)
hist(dados$altura)

boxplot(dados$altura, horizontal = TRUE)


order(dados$idade)

dados[dados$altura, ]

dados[dados$altura <= 0.5, ]

dados[dados$id == 11, "altura"] <- 1.82

mulheres1560kilo <- dados[dados$sexo == "F" & 
      dados$altura > 1.5 &
      dados$peso > 60, ]

boxplot(mulheres1560kilo$idade , horizontal = TRUE)

boxplot(dados[dados$sexo == "F", "altura"], horizontal = TRUE)

dados[dados$altura]

dados[dados$altura <= 1, 'altura'] <- 1.82

#Util para variaveis quantitativas
summary(dados)
#Util para variaveis qualitativas
table(dados$sexo)

cor(x = dados$peso, y = dados$altura)

#Investigando peso e altura
summary(dados)
summary(dados$altura)

barplot(table(dados$sexo))

boxplot(dados$altura, 
        horizontal = TRUE,
        main = "distribuição das alturas")
##Ajustar
write.csv(dados, "dadosLimpo.csv")

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
