#Dependencies
setwd   ("../R Scripts")
source  ("data.R")
require ("ggplot2")

ggplot(d[d$Function == "Transporte",], aes(x = Year, y = Value.Planned)) +
  geom_boxplot(outliers = F) +
  coord_cartesian(ylim = c(0, 75000000)) +
  theme(axis.text.x = element_text(angle = 90))
