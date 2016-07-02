# Importar los dos archivos y unirlos
db2016 <- read.csv("exportCatacion2016-06-27_03_42_22.csv", sep = ";", na.strings = "", encoding = "UTF-16")
db2015 <- read.csv("exportCatacion2016-06-27_12_54_37.csv", sep = ";", na.strings = "", encoding = "UTF-16")
db <- rbind(db2015, db2016)

# Explorar y corregir
names <- names(db)
View(names)
class <- sapply(db, class)
class[class == "integer" | class == "numeric"] # en estos aplico summary, en el resto table

# fecha.facturacion
table(db$fecha.facturacion)
# HALLAZGO: Ninguno
# ACCION: NA

# factura
table(db$factura)
db$factura <- as.character(db$factura)
table(nchar(db$factura))
?tabl
# HALLAZGO: 
# 1. La mayoría de los valores son numéricos pero algunos tienen "-"
# 2. La mayoría de los valores (449) tienen 10 dígitos
# ACCION:
# 1. Ninguna. Las implicaciones son bajas y seria muy costoso tratar de corregir los datos

# Muestra
table(db$Muestra)
# HALLAZGO: Ninguno
# ACCION: NA

# documento_asociado
summary(db$documento_asociado)
# HALLAZGO: Ninguno
# ACCION: NA

# Nombre.Finca
table(db$Nombre.Finca)
# HALLAZGO: el valor "EL TESORO, LA ERNESTINA" parece ser dos fincas
# ACCION: Validar si es una sola finca. Si son dos, tratar de definir a cual pertenece la  observacion.
#   si no se puede definir a cuál pertenece, asignarlas a las dos.

# Sesion
table(db$Sesion)
# HALLAZGO: valores que empiezan por "perfilación" escrito de diferentes formas
# ACCION: 

# Laboratorio
table()
# HALLAZGO: 
# ACCION: 

# Catador
table()
# HALLAZGO: 
# ACCION: 

# nivelTueste
summary()
# HALLAZGO: 
# ACCION: 

# descripFragancia
table()
# HALLAZGO: 
# ACCION: 

# calFragancia
summary()
# HALLAZGO: 
# ACCION: 

# descriSabor
table()
# HALLAZGO: 
# ACCION: 

# calSabor
summary()
# HALLAZGO: 
# ACCION: 

# descriResabio
table()
# HALLAZGO: 
# ACCION: 

# calResabio
summary()
# HALLAZGO: 
# ACCION: 

# descriAcidez
table()
# HALLAZGO: 
# ACCION: 

# calAcidez
summary()
# HALLAZGO: 
# ACCION: 

# descriCuerpo
table()
# HALLAZGO: 
# ACCION: 

# calCuerpo
summary()
# HALLAZGO: 
# ACCION: 

# descriBalance
table()
# HALLAZGO: 
# ACCION: 

# calBalance
summary()
# HALLAZGO: 
# ACCION: 

# uniformidad
summary()
# HALLAZGO: 
# ACCION: 

# descriDefectos
table()
# HALLAZGO: 
# ACCION: 

# calDefectos
summary()
# HALLAZGO: 
# ACCION: 

# Tipo.Defecto
table()
# HALLAZGO: 
# ACCION: 

# Puntaje.Final
summary()
# HALLAZGO: 
# ACCION: 

# Notas.Adicionales
table()
# HALLAZGO: 
# ACCION: 

# X
table()
# HALLAZGO: 
# ACCION: 