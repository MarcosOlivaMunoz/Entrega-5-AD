datos<-read.table("europa.dat")
n=dim(datos)[1]
cov(datos)
#forma numérica
library(ggplot2)
library("factoextra")
datos.acp=prcomp(datos, scale = TRUE)
lambdas=get_eigenvalue(datos.acp)
lambdas
#forma gráfica
fviz_eig(datos.acp, addlabels = TRUE, ylim=c(0,100))
#Observamos que entre las 4 primeras hacen el 85.65% 
fviz_pca_var(datos.acp, col.var = "contrib",
             repel = TRUE) 
library("ggfortify")
autoplot(datos.acp, data = datos,
         loadings = TRUE,
         loadings.label = TRUE)