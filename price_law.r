# Set working directory
setwd("~/Downloads/price_law")

# Load libraries
library(readxl)
library(ggplot2)

# Read file
df <- read_excel("bib_combined.xlsx")

# Log-transform publication counts
df$log_pub <- log(df$N_Publications)

# Fit linear model: log(N) = a + b*Year
model <- lm(log_pub ~ Year, data = df)
summary(model)

# Plot log-transformed growth (Price’s Law test)
p <- ggplot(df, aes(x = Year, y = log_pub)) +
  geom_point() +
  geom_smooth(method = "lm", se = TRUE) +
  scale_x_continuous(breaks = 2016:2026) +       
  labs(
    title = "Price’s Law: Exponential Growth Test",
    y = "log(Number of Publications)",
    x = "Year"
  ) +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold")  # Center title
  )

# Print the plot
print(p)

# ---------------------------------------------------------------
# Save the figure in high resolution (600 DPI)
# ---------------------------------------------------------------
ggsave(
  filename = "Prices_Law_Exponential_Growth_600dpi.png",
  plot = p,
  width = 8,
  height = 6,
  dpi = 600
)