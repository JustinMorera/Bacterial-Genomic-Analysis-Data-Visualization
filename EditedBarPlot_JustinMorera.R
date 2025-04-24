library(ggplot2)
library(scales)


Genus <- c("Prevotella", "Actinomyces", "Bacteroides", 
           "Staphylococcus", "Nocardia", "Streptococcus", "Clostridium", 
           "Burkholderia", "Mycobacterium", "Corynebacterium")

NumberOfGenes <- c(67009, 168985, 198113, 
                   226971, 231403, 264655, 347156, 377048, 492096, 543699)
AccessionsPerGenus <- c(30, 37, 38, 89, 22, 76, 80, 89, 72, 148)


# Create a data frame
df <- data.frame(Genus, NumberOfGenes, AccessionsPerGenus)

# Add Genes per Accession column
df$GenesPerAccession <- df$NumberOfGenes / df$AccessionsPerGenus

# Reorder Genus factor levels by NumberOfGenes (ascending)
df$Genus <- factor(df$Genus, levels = df$Genus[order(df$NumberOfGenes)])

# Create the plot
ggplot(df, aes(x = Genus, y = GenesPerAccession)) +
  geom_bar(stat = "identity", fill = "green3") +
  geom_text(aes(label = round(GenesPerAccession)), vjust = -0.3, size = 3.5) +
  geom_hline(yintercept = 6250, color = "red", linetype = "dashed", linewidth = 1) +
  scale_y_continuous(
    limits = c(0, 11000),
    breaks = seq(0, 11000, by = 1000),
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
    title = "Genes per Accession per Genus",
    x = "Genus",
    y = "Genes per Accession"
  )

# Save ggplot directly with ggsave
ggsave("genes_per_accession.png", width = 10, height = 8, dpi = 300)
