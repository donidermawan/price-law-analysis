# Price's Law: Exponential Growth Test

This repository provides an **R script** to evaluate the **exponential growth of scientific publications** as described by the growth component of **Price's Law**. The script performs a logarithmic transformation of annual publication counts, fits a linear regression model, and generates a high-resolution publication-quality figure.

## Overview

Price's Law suggests that scientific literature tends to grow exponentially during the development of a research field. If publication counts follow an exponential model

\[
N(t)=N_0e^{bt}
\]

then taking the natural logarithm gives

\[
\log(N)=\log(N_0)+bt
\]

which is a linear relationship. Therefore, plotting the logarithm of publication counts against time allows exponential growth to be evaluated using simple linear regression.

This repository automates this analysis and visualization.

---

## Features

- Reads annual publication data from an Excel file
- Performs natural logarithm transformation of publication counts
- Fits a linear regression model
- Tests exponential growth according to Price's Law
- Generates a publication-quality figure with a 95% confidence interval
- Saves the figure at **600 DPI** for manuscript submission

---

## Repository Structure

```
.
├── bib_combined.xlsx
├── price_law.R
├── Prices_Law_Exponential_Growth_600dpi.png
└── README.md
```

---

## Input Data

The input Excel file (`bib_combined.xlsx`) should contain at least the following columns:

| Year | N_Publications |
|------:|---------------:|
|2016|12|
|2017|15|
|2018|18|
|...|...|

where

- **Year** = publication year
- **N_Publications** = number of publications in that year

---

## Required Packages

Install the required R packages:

```r
install.packages("readxl")
install.packages("ggplot2")
```

Load the libraries:

```r
library(readxl)
library(ggplot2)
```

---

## Workflow

The script performs the following steps:

1. Read publication data from Excel
2. Compute the natural logarithm of annual publication counts
3. Fit the linear regression model

```text
log(N) = a + b × Year
```

4. Visualize the fitted regression line
5. Display the 95% confidence interval
6. Save a high-resolution figure (600 DPI)

---

## Running the Script

Set the working directory:

```r
setwd("~/Downloads/price_law")
```

Run the script:

```r
source("price_law.R")
```

---

## Output

### Linear Regression Summary

The regression output includes:

- Intercept
- Slope
- Standard error
- p-value
- R²
- Residual statistics

The slope represents the exponential growth rate.

---

### Publication Figure

The generated figure includes:

- Annual publication counts (log-transformed)
- Linear regression line
- 95% confidence interval
- Publication-quality formatting

Example output:

```
Price's Law: Exponential Growth Test
```

Saved as:

```
Prices_Law_Exponential_Growth_600dpi.png
```

---

## Interpretation

If the log-transformed publication counts align closely with the regression line and the regression slope is statistically significant, the publication trend is consistent with exponential growth, supporting the growth component of Price's Law.

This analysis evaluates **publication growth only**. A complete Price's Law analysis may also include identifying the core group of highly productive authors (often approximated by the square-root relationship between authors and core contributors).

---

## Citation

If you use this repository in your research, please cite Price's original work:

Price DJD. *Little Science, Big Science*. Columbia University Press; 1963.

---

## License

This project is released under the MIT License.

---

## Author

**Doni Dermawan**

Bioinformatics Specialist | AI for Drug Discovery | Computational Biology
