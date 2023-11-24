datos<-read.table("europa.dat")
n=dim(datos)[1]
cov(datos)
#forma numérica
library(tidyverse, warn.conflicts = FALSE)
library(ggplot2)
library(factoextra)
library(ggfortify)
datos.acp=prcomp(datos, scale = TRUE)
lambdas=get_eigenvalue(datos.acp)
lambdas
#forma gráfica
fviz_eig(datos.acp, addlabels = TRUE, ylim=c(0,100))
#Observamos que entre las 4 primeras hacen el 85.65%
# 1,2
fviz_pca_var(datos.acp, col.var = "contrib",
             gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),
             repel = TRUE)

fviz_pca_biplot(datos.acp, repel = TRUE,
                col.var = "#Fc4E07", # color para las variables
                col.ind = "#EEEEEE"  # color para las observaciones
) + theme_dark()
#1,3
fviz_pca_var(datos.acp, col.var = "contrib", axes = c(1, 3),
             gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),
             repel = TRUE)

<<<<<<< HEAD
fviz_pca_biplot(datos.acp, repel = TRUE, axes = c(1, 3),
                col.var = "#Fc4E07", # color para las variables
                col.ind = "#EEEEEE"  # color para las observaciones
) + theme_dark()
#2,3
fviz_pca_var(datos.acp, col.var = "contrib", axes = c(2, 3),
             gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),
             repel = TRUE)

fviz_pca_biplot(datos.acp, repel = TRUE, axes = c(2, 3),
                col.var = "#Fc4E07", # color para las variables
                col.ind = "#EEEEEE"  # color para las observaciones
) + theme_dark()

datos2 = datos %>% arrange(Agr) %>% .[1:24,]
datos2.acp=prcomp(datos2, scale = TRUE)
fviz_eig(datos2.acp, addlabels = TRUE, ylim=c(0,100))

fviz_pca_var(datos2.acp, col.var = "contrib",
             gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),
             repel = TRUE)

fviz_pca_biplot(datos2.acp, repel = TRUE,
                col.var = "#Fc4E07", # color para las variables
                col.ind = "#EEEEEE"  # color para las observaciones
) + theme_dark()
=======
library("ggfortify")
autoplot(datos.acp, data = datos,  
         loadings = TRUE,
         loadings.label = TRUE)
>>>>>>> 644db8a3777be2aa69f91ee2b8cf4c65a29c0484
