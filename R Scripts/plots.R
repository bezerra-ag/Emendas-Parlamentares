#Dependencies
setwd   ("../R Scripts")
source  ("data.R")
require ("ggplot2")

ggplot(d, aes(x = Year, y = Value.Paid/Value.Planned)) +
  geom_boxplot(outliers = F) +
  facet_wrap(~ Function) +
  theme(axis.text.x = element_text(angle = 90)) +
  labs(
    title = "Razão de Valores Pagos por Valores Empenhados das Emendas Parlamentares dos últimos 10 anos",
    x = "Ano",
    y = "Razão de Valor Pago por Valor Empenhado"
  )
