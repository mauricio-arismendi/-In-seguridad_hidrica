 <- NULL
datos22

#Hay que trabajar con el dataframe datos222
?unique
unique(datos2$Cuenca)
unique(datos2$Fuente)
limariyotros <- subset(datos2, datos2$Cuenca == c("Rio Limari")|datos2$Cuenca == c("Costeras entre Elqui y Limari")| datos2$Cuenca == c("Costeras entre R.Limari y R.Choapa"))
soloLimari <- subset(datos2, datos2$Cuenca == c("Rio Limari"))

nrow(soloLimari)
nrow(limariyotros)

conteo <- tapply(datos2$Cuenca, datos2$Cuenca, length)
conteo

soloLimari
#Guardar el archivo con datos2
#write.csv(datos2, file = "C:\\Users\\mauri\\Desktop\\Inseguridad Hidrica\\datos2.csv", row.names = TRUE)
unique(soloLimari$Naturaleza.del.Agua)
soloLimari
soloLimari$Naturaleza.del.Agua
soloLimari$NaturCategory <- as.factor(soloLimari$Naturaleza.del.Agua)
#a
plot(soloLimari$Naturaleza.del.Agua, main = "Numero de DAA por Naturaleza del agua", ylab = "Cantidad", xlab = "Tipo", col="lightblue" )
?plot
table(soloLimari$NaturCategory)

#queria saber cuantos NA habian en Naturaleza del agua, habia uno solo. 
#resumen_otros <- sapply(limari$NaturAgua, function(x) sum(!is.na(x)))
#sum(resumen_otros)
