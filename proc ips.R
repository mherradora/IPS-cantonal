# Invocacion a librerias
require(tidyr)
require(dplyr)
require(ggplot2)
require(plotly)
require(readr)

ips <- read.csv("./inputs/cr-IPS-cantonal.csv", stringsAsFactors=FALSE)
names(ips) <- gsub("\\."," ",names(ips))
ips <- ips %>%
  select(-Provincia)

cantones_2011 <- read_csv("./inputs/cantones_censo2011_demograficos.csv")

ips_ampliado <- ips %>%
  merge(cantones_2011, by.x = "Cve", by.y = "No.Unidad", all = T)

saveRDS(ips_ampliado,"ips_ampliado.Rds")

# plot_ly(ips, y = Agua.y.Saneamiento, color = as.factor(Provincia), type = "box")

# Necesidades humanas básicas ----
# Nutrición y Asistencia Médica Básica
## Tasa de mortalidad infantil
## Muertes por enfermedades infecciosas
## Intensidad del déficit alimentario
## Tasa de mortalidad materna

# Agua y Saneamiento
## Acceso a fuentes de abastecimiento de agua potable mejoradas
## Acceso a saneamiento mejorado

# Vivienda
## Hacinamiento
## Calidad de la vivienda
## Acceso a energía eléctrica

# Seguridad Personal
## Tasa de robos y asaltos
## Tasa de homicidios
## Muertes en carreteras

# Fundamentos del Bienestar ----

# Acceso a conocimientos básicos
## Analfabetismo
## Matriculación en educación primaria
## Matriculación en educación secundaria
## Rezago escolar
## Paridad de género en educación secundaria

# Acceso a Información y Comunicaciones
## Usuarios de telefonía movil
## Usuarios de computadoras
## Usuarios de internet
## Cobertura telefonía movil 3G

# Salud y Bienestar
## Esperanza de vida al nacer
## Tasa de muertes por IRA
## Tasa de suicidio
## Tasa de obesidad
## Tasa de mortalidad por enfermedades no contagiosas

# Sustentabilidad del Ecosistema
## Desastres naturales
## Separación de residuos
## Cobertura forestal
## Disponibilidad de agua por persona


# Oportunidades ----

# Derechos Personales
## Libertad de acceso a la información
## Participación política
## Derecho a la propiedad privada
## Libertad de asociación

# Libertad Personal y de Elección
## Porcentaje de madres adolescentes
## Población jóvenes Nini
## Rendición de cuentas
## Acceso a la cultura y recreación

# Tolerancia e Inclusión
## Inclusión al adulto mayor
## Inclusión a población con discapacidad
## Inclusión población indígena
## Inclusión de migrantes
## Inclusión de hogares con jefatura femenina

# Acceso a Educación Superior
## Población con educación superior
## Escolaridad promedio de las mujeres
## Población con educación técnica
