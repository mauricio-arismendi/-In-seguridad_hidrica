
names_row <- df_sin_filas1y2[1,]
df_sin_filas1y2 <- daIV[-c(1, 2, 3), ]
df <- df_sin_filas1y2
df
nombres_columnas <- unlist(df[1, ])
datos <- df[-1, ]
colnames(datos) <- nombres_columnas
rownames(datos) <- NULL
datos

#Hay que trabajar con el dataframe datos
?unique
unique(datos$Cuenca)

limariyotros <- subset(datos, datos$Cuenca == c("Rio Limari")|datos$Cuenca == c("Costeras entre Elqui y Limari")| datos$Cuenca == c("Costeras entre R.Limari y R.Choapa"))
soloLimari <- subset(datos, datos$Cuenca == c("Rio Limari"))
nrow(soloLimari)
nrow(limariyotros)

conteo <- tapply(datos$Cuenca, datos$Cuenca, length)
conteo

nrow(datos$Cuenca)
?tapply


limari
#limari<- tapply(limari$, limari$ )
write.csv(datos, file = "C:\\Users\\mauri\\Desktop\\Inseguridad Hidrica\\datos.csv", row.names = TRUE)
