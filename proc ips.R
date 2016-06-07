# Invocacion a librerias
require(tidyr)
require(dplyr)
require(ggplot2)
require(plotly)
require(readr)

ips <- read.csv("~/MHQ/Dropbox/ToGitHub/IPS-cantonal/inputs/cr-IPS-cantonal.csv", stringsAsFactors=FALSE)

cantones_2011 <- read_csv("~/MHQ/Dropbox/ToGitHub/IPS-cantonal/inputs/cantones_censo2011_demograficos.csv")

ips_ampliado <- ips %>%
  merge(cantones_2011, by.x = "Cve", by.y = "No.Unidad", all = T)

saveRDS(ips_ampliado,"ips_ampliado.Rds")

# plot_ly(ips, y = Agua.y.Saneamiento, color = as.factor(Provincia), type = "box")
