# Invocacion a librerias
require(tidyr)
require(dplyr)
require(ggplot2)
require(plotly)

ips <- read.csv("~/MHQ/Dropbox/ToGitHub/IPS-cantonal/inputs/cr-IPS-cantonal.csv", stringsAsFactors=FALSE)

plot_ly(ips, y = Agua.y.Saneamiento, color = as.factor(Provincia), type = "box")
