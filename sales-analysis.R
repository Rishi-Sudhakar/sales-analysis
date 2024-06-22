# Load necessary libraries
library(tidyverse)
library(lubridate)

# Load the data
sales_data <- read_csv("sales_data.csv")

# Basic Data Exploration
# View the first few rows of the data
head(sales_data)

# Summary statistics
summary(sales_data)

# Check for missing values
colSums(is.na(sales_data))

# Convert ORDERDATE to Date type
# Use mdy() if dates are in mm/dd/yyyy format
sales_data <- sales_data %>%
  mutate(ORDERDATE = mdy(ORDERDATE))

# Aggregate Sales by Year and Quarter
sales_by_year_qtr <- sales_data %>%
  group_by(YEAR_ID, QTR_ID) %>%
  summarise(Total_Sales = sum(SALES))

# Plot Sales by Year and Quarter
ggplot(sales_by_year_qtr, aes(x = factor(QTR_ID), y = Total_Sales, fill = factor(YEAR_ID))) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Total Sales by Year and Quarter",
       x = "Quarter",
       y = "Total Sales",
       fill = "Year") +
  theme_minimal()

# Aggregate Sales by Product Line
sales_by_product_line <- sales_data %>%
  group_by(PRODUCTLINE) %>%
  summarise(Total_Sales = sum(SALES))

# Plot Sales by Product Line
ggplot(sales_by_product_line, aes(x = reorder(PRODUCTLINE, Total_Sales), y = Total_Sales, fill = PRODUCTLINE)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  labs(title = "Total Sales by Product Line",
       x = "Product Line",
       y = "Total Sales") +
  theme_minimal() +
  theme(legend.position = "none")

# Aggregate Sales by Country
sales_by_country <- sales_data %>%
  group_by(COUNTRY) %>%
  summarise(Total_Sales = sum(SALES))

# Plot Sales by Country
ggplot(sales_by_country, aes(x = reorder(COUNTRY, Total_Sales), y = Total_Sales, fill = COUNTRY)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  labs(title = "Total Sales by Country",
       x = "Country",
       y = "Total Sales") +
  theme_minimal() +
  theme(legend.position = "none")

# Aggregate Sales by Deal Size
sales_by_deal_size <- sales_data %>%
  group_by(DEALSIZE) %>%
  summarise(Total_Sales = sum(SALES))

# Plot Sales by Deal Size
ggplot(sales_by_deal_size, aes(x = reorder(DEALSIZE, Total_Sales), y = Total_Sales, fill = DEALSIZE)) +
  geom_bar(stat = "identity") +
  labs(title = "Total Sales by Deal Size",
       x = "Deal Size",
       y = "Total Sales") +
  theme_minimal() +
  theme(legend.position = "none")

# Save processed data to a new CSV
write_csv(sales_data, "processed_sales_data.csv")
