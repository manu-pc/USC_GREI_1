*NOTAS!!!*

*vectores*: c(1,2,3,4,5) ou seq(1,5,by=1)

*Representaciones gráficas*:boxplot, hist, barplot
*!en hist* o atributo freq pode ser T ou F. se é T conta frecuencias, se é F conta densidad(relativo)

*Medidas características:* Summary, AVISO: var() calcula CUASIVARIANZA!!! para pasar a varianza multiplica por (n-1)/n

*Regresión lineal*: 
regresion <- lm(GDP ~ PCs) 
plot(regresion)
summary(regresion)
beta0< regresion$coefficients[1] *modelo ajustado*: recta abline con beta0 e beta1
beta1<-regresion$coefficients[2] *predicciones*: pred<-beta0+beta1*x0



*Masa de probabilidad*: prob de que teña ese mismo valor

*Funcion de distribucion*: prob de que teña un valor menor ou igual que ese numero. é igual ao cumsum da mdp

*Funcion de densidad* o mismo que masa de probabilidad, pero para variabels continuas (prob de que pertenezca a un intervalo). *fdens é a derivada da fdist*
  *Comprobar*:integrate(fdens, intervalo) debería devolver 1 de resultado
  

*LETRAS DE DISTRIBUCIONES*
*r*: genera valores de
*p*: prob(X<=n). *fdist*
*d*: prob(X=n). *mdp*
*q*: cuantil.ej: cuantil z(1-alfa/2): cuantil = qnorm(1-alfa/2)


*NOMBRES DE DISTRIBUCIONES*
*DISCRETAS*
*binom*: Binomial. nº de éxitos tras repetir bernoulli n veces
*nbinom*: BN. nº de fracasos hasta el n-ésimo éxito
*pois*: Poisson. nº de sucesos en un intervalo lambda
*hyper*: hipergeométrica. en una población de N elementos, de los cuales k son de clase A, tomamos una muestra de tamaño n. H(N,n,k) é o num de elementos de clase A na mostra

*CONTINUAS*
*unif*: Uniforme. prob cte dentro de un intervalo
*norm*: normal. toma como atributos *mean* e *sd* (NON VARIANZA!!)
*t*: t-student


*INTERVALOS DE CONFIANZA*
realisticamente, usa esto mellor:
library(LearningStats)
Mean.CI(datos1, sigma=sqrt(2), conf.level=0.9) *media. sirve para sigma conocido e tamen desconocido. podeslle pasar sc, que é cuasidesviacion estandar (NON CUASIVARIANZA)*
variance.CI(datos3,conf.level=0.97)  *varianza*
proportion.CI(x=9,n=200,conf.level=0.99) *prop*


*CONTRASTE DE HIPÓTESES*
#h0: mu=4
#h1: mu!=4
#alfa=0.05
t.test(datos2,mu=4)

#h0: mu>=4
#h1: mu<4
#alfa=0.05
t.test(datos2,mu=4,alternative="less")

*PÓDESE SUSTITUIR t POR CALQUERA DISTRIBUCIÓN*


*SORTE E PÁSAO BEN :)*

