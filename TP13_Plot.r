# On import ggplot
library(ggplot2)

# Création de donnée en distribution normale
data <- data.frame(value = c(rnorm(1000, mean = 50, sd = 10), rnorm(500, mean = 70, sd = 15)))

# Création du plot avec ggplot, on affiche l'histogramme, la courbe 
plot <- ggplot(
  data, 
  aes(x = value)) +
  geom_histogram(aes(y = after_stat(density)), binwidth = 5, fill = "lightblue", color = "black", alpha = 0.7) +
  geom_density(color = "red", linewidth = 1) +
  geom_rug(sides = "b", color = "blue", alpha = 0.5) +
  labs(title = "Histogram with Density and Rug Plot",
       x = "Value",
       y = "Density") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))

# Sauvegarde du fichier
ggsave("TP_13_Boillat_Naomi.png", plot = plot, width = 8, height = 6)
