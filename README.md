# Bacterial Genomic Analysis & Data Visualization

This project provides tools for analyzing and visualizing bacterial genomic data. It includes scripts and notebooks for processing genomic datasets, generating visualizations such as bar plots, dendrograms, and sunburst charts, and facilitating exploratory data analysis.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Usage](#usage)
  - [Data Processing](#data-processing)
  - [Data Visualization](#data-visualization)
- [Project Structure](#project-structure)
- [License](#license)

## Overview

The repository contains R scripts and Jupyter notebooks designed to process bacterial genomic data and generate insightful visualizations. These tools assist researchers in understanding genomic structures, gene distributions, and taxonomic relationships within bacterial datasets. The dataset used in this project contains the NCBI GBFF files of all the reference genomes from the 10 bacterial genera containing the highest number of human-pathogenic species.

The 10 genera represented in the dataset:
- Actinomyces
- Bacteroides
- Burkholderia
- Clostridium
- Corynebacterium
- Mycobacterium
- Nocardia
- Prevotella
- Staphylococcus
- Streptococcus

## Features

- Data processing using Jupyter notebooks.
- Visualization scripts in R for generating:
  - Bar plots of gene distributions.
  - Dendrograms representing taxonomic hierarchies.
  - Interactive sunburst charts for hierarchical data representation.
- Sample datasets and generated visualizations included.

## Prerequisites

- R (version 4.0 or higher)
- Python 3.x
- Required R packages: `ggplot2`, `dplyr`, `plotly`
- Required Python packages: `pandas`, `numpy`, `matplotlib`

To install the required R packages:

```r
install.packages(c("ggplot2", "dplyr", "plotly"))
```

To install the required Python packages:

```bash
pip install pandas numpy matplotlib
```

## Usage

### Data Processing

Use the provided Jupyter notebook to process the genomic data:

```bash
jupyter notebook DataProcessing.ipynb
```

This notebook will guide you through loading the dataset, performing necessary preprocessing steps, and preparing the data for visualization.

### Data Visualization

After processing the data, utilize the R scripts to generate visualizations:

1. **Bar Plot of Gene Distributions:**

   ```bash
   Rscript EditedBarPlot_JustinMorera.R
   ```

2. **Dendrogram of Taxonomic Hierarchies:**

   ```bash
   Rscript DV\ Final\ Graph1.R
   ```

3. **Sunburst Chart for Hierarchical Data:**

   ```bash
   Rscript DV\ Final\ Graph2.R
   ```

*Note: Ensure that the processed data files are in the correct directory as expected by the scripts.*

## Project Structure

```
├── data/                           # Directory containing sample datasets
├── DataProcessing.ipynb            # Jupyter notebook for data processing
├── EditedBarPlot_JustinMorera.R    # R script for bar plot visualization
├── DV Final Graph1.R               # R script for dendrogram visualization
├── DV Final Graph2.R               # R script for sunburst chart visualization
├── genes_per_accession.png         # Sample bar plot image
├── taxa_dendrogram2.png            # Sample dendrogram image
├── sunburst.html                   # Interactive sunburst chart
├── LICENSE                         # License information
└── README.md                       # Project documentation
```

## License

This project is licensed under the Apache-2.0 License. See the [LICENSE](LICENSE) file for details.

---

Feel free to explore the scripts and modify them to suit your specific dataset and research needs.

If you have any questions or need further assistance, please contact (Justin Morera)[mailto:mustinjorera@gmail.com].
