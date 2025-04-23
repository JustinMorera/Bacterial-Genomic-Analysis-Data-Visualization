library(ggplot2)
library(scales)


Genus <- c("Prevotella", "Actinomyces", "Bacteroides", 
           "Staphylococcus", "Nocardia", "Streptococcus", "Clostridium", 
           "Burkholderia", "Mycobacterium", "Corynebacterium")

AccessionsPerGenus <- c(30, 37, 38, 89, 22, 76, 80, 89, 72, 148)

# Create a data frame
df <- data.frame(Genus, AccessionsPerGenus)

# Preserve Genus order
df$Genus <- factor(df$Genus, levels = Genus)

# Create the plot
ggplot(df, aes(x = Genus, y = AccessionsPerGenus)) +
  geom_bar(stat = "identity", fill = "cyan4") +
  geom_text(aes(label = scales::comma(AccessionsPerGenus)), vjust = -0.3, size = 3.5) +
  scale_y_continuous(
    limits = c(0, 160),
    breaks = seq(0, 160, by = 20),
    labels = comma
  ) +
  theme_classic() +
  theme(
    axis.text.x = element_text(size = 12, angle = 45, hjust = 1, face = "bold", family = "serif"),
    axis.text.y = element_text(size = 12, face = "italic", family = "sans"),
    axis.title.x = element_text(size = 16, face = "bold"),
    axis.title.y = element_text(size = 16, face = "bold"),
    plot.title = element_text(size = 16, face = "bold", hjust = 0.5),
    panel.grid.minor.y = element_blank(),
    panel.grid.major.x = element_blank(),
    panel.grid.major.y = element_line(color = "gray80"),
    panel.border = element_rect(color = "black", fill = NA, linewidth = 1)
  ) +
  labs(
    title = "Number of Accessions per Genus",
    x = "Genus",
    y = "Number of Accessions"
  )
