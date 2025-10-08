
#Aqui temos os valores maiores e menores, bem como o intervalo entre eles
x <- seq(-4, 4, 0.001)
y <- dnorm(x)

#Aqui temos a densidade de probabilida de um valor menor que 1.42 e maior que zero, calculada a partir da integral 
pnorm(0.4) - pnorm(1)


plot(x,  
     y,
     type = 'l',
     main = paste("Densidade de probabilidad", 
                  " = ", round(pnorm(0.4) - pnorm(1), 2)), 
     xlab = "", ylab = "")

x_area = x[x>=0.4 & x<=1]

polygon(c(x_area, rev(x_area)),
        c(dnorm(x_area),rep(0, length(x_area))), 
        col = 'steelblue')


#Altere os valores para testar variadas densidades de probabilidade
a = 0.4
b = 1

#Aqui temos os valores maiores e menores, bem como o intervalo entre eles
x <- seq(-4, 4, 0.001)
y <- dnorm(x)

#Aqui temos a densidade de probabilida de um valor menor que 1.42 e maior que zero, calculada a partir da integral 
pnorm(a) - pnorm(b)


plot(x,  
     y,
     type = 'l',
     main = paste("Densidade de probabilidad", 
                  " = ", round(pnorm(b) - pnorm(a), 2)), 
     xlab = "", ylab = "")

x_area = x[x>=a & x<=b]

polygon(c(x_area, rev(x_area)),
        c(dnorm(x_area),rep(0, length(x_area))), 
        col = 'steelblue')

#Crie a sua propria curva 



