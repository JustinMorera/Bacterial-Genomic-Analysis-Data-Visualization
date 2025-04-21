library(ggplot2)
library(scales)


Genus <- c("Prevotella", "Actinomyces", "Bacteroides", 
           "Staphylococcus", "Nocardia", "Streptococcus", "Clostridium", 
           "Burkholderia", "Mycobacterium", "Corynebacterium")

NumberOfGenes <- c(67009, 168985, 198113, 
                   226971, 231403, 264655, 347156, 377048, 492096, 543699)

# Create a data frame
df <- data.frame(Genus, NumberOfGenes)

# Reorder Genus factor levels by NumberOfGenes (ascending)
df$Genus <- factor(df$Genus, levels = df$Genus[order(df$NumberOfGenes)])

# Create the plot
ggplot(df, aes(x = Genus, y = NumberOfGenes)) +
  geom_bar(stat = "identity", fill = "green3") +
  geom_text(aes(label = scales::comma(NumberOfGenes)), vjust = -0.3, size = 3.5) +
  scale_y_continuous(
    limits = c(0, 600000),
    breaks = seq(0, 600000, by = 100000),
    labels = comma
  ) +
  theme_classic() + 
  theme(
    axis.text.x = element_text(size = 12, angle = 45, hjust = 1, face = "bold", family = "serif"),
    axis.text.y = element_text(size = 12, face = "italic", family = "sans"),
    axis.title.x = element_text(size = 16, face = "bold"),
    axis.title.y = element_text(size = 16, face = "bold"),
    plot.title = element_text(size = 16, face = "bold", hjust = 0.5),
    panel.grid.minor.y = element_blank(),   # Remove minor y-grid lines
    panel.grid.major.x = element_blank(),   # Optional: remove vertical grid lines
    panel.grid.major.y = element_line(color = "gray80"),  # Optional: subtle y-grid lines
    panel.border = element_rect(color = "black", fill = NA, linewidth = 1)  # Bounding box
  ) +
  labs(
    title = "Number of Genes per Genus",
    x = "Genus",
    y = "Number of Genes"
  )

