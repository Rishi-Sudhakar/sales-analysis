# Sales Data Analysis

This project performs an in-depth analysis of sales data using R. The data is sourced from a Kaggle sales dataset containing information such as order numbers, sales amounts, product lines, and customer details. The analysis includes data cleaning, aggregation, and visualization to provide insights into sales performance across different dimensions.

## Table of Contents

- [Introduction](#introduction)
- [Installation](#installation)
- [Usage](#usage)
- [Data Overview](#data-overview)
- [Analysis and Visualizations](#analysis-and-visualizations)
- [Benefits](#benefits)
- [Contributing](#contributing)
- [License](#license)

## Introduction

This project uses R for data manipulation and visualization to gain insights from sales data. By analyzing this data, businesses can identify trends, understand customer behavior, and make informed decisions to boost sales and improve customer satisfaction.

## Installation

### Prerequisites

Ensure you have R installed on your machine. You can download it from [CRAN](https://cran.r-project.org/).

### Setup

1. **Clone the repository:**

   ```sh
   git clone https://github.com/Rishi-Sudhakar/sales-analysis.git
   cd sales-analysis
   ```

2. **Install necessary R packages:**

   Open your R console and run the following command:

   ```r
   install.packages(c("tidyverse", "lubridate", "ggplot2"))
   ```

## Usage

1. **Prepare your dataset:**

   Ensure your sales data CSV file is named `sales_data.csv` and is located in the project directory.

2. **Run the analysis script:**

   ```sh
   Rscript sales-analysis.R
   ```

3. **Output:**

   The script will generate several visualizations and save a processed data CSV file named `processed_sales_data.csv`.

## Data Overview

The dataset contains the following columns:

- `ORDERNUMBER`
- `QUANTITYORDERED`
- `PRICEEACH`
- `ORDERLINENUMBER`
- `SALES`
- `ORDERDATE`
- `STATUS`
- `QTR_ID`
- `MONTH_ID`
- `YEAR_ID`
- `PRODUCTLINE`
- `MSRP`
- `PRODUCTCODE`
- `CUSTOMERNAME`
- `PHONE`
- `ADDRESSLINE1`
- `ADDRESSLINE2`
- `CITY`
- `STATE`
- `POSTALCODE`
- `COUNTRY`
- `TERRITORY`
- `CONTACTLASTNAME`
- `CONTACTFIRSTNAME`
- `DEALSIZE`

## Analysis and Visualizations

The script performs the following analyses:

1. **Aggregate Sales by Year and Quarter:**

   Visualizes total sales by year and quarter to identify seasonal trends.

2. **Sales by Product Line:**

   Shows total sales for each product line to highlight top-performing categories.

3. **Sales by Country:**

   Displays total sales by country to understand geographical performance.

4. **Sales by Deal Size:**

   Analyzes sales by deal size to determine the impact of order size on revenue.

## Benefits

- **Data-Driven Decision Making:**

  By understanding sales trends and patterns, businesses can make informed decisions to drive growth.

- **Performance Tracking:**

  Monitor sales performance over time, across different product lines, and in various regions.

- **Customer Insights:**

  Gain insights into customer preferences and behaviors to tailor marketing strategies.

- **Resource Allocation:**

  Optimize resource allocation by identifying high-performing products and markets.

## Contributing

We welcome contributions to enhance this project. To contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes and commit them (`git commit -m 'Add new feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Open a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
