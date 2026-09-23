# Power BI Dashboard Guide

## Data Sources
Use `Dataset/sales_data.csv` as the primary Power BI data source.

## Recommended Dashboard Layout

### KPI Cards
- Total Sales
- Total Quantity
- Average Monthly Sales
- Forecast Sales

### Visuals
1. **Actual vs Forecast Sales** — Line chart
2. **Monthly Sales Trend** — Line chart
3. **Sales by Category** — Clustered column chart
4. **Sales by Region** — Bar chart
5. **Promotion Impact** — Column chart
6. **Category Monthly Trend** — Line chart

### Slicers
- Year
- Category
- Region
- Promotion
- Holiday

## Suggested DAX Measures

```DAX
Total Sales = SUM(sales_data[Sales])

Total Quantity = SUM(sales_data[Quantity])

Average Sales = AVERAGE(sales_data[Sales])
```

## Forecast
For a native Power BI forecast, use the Analytics pane on a time-series line chart. The Excel workbook also contains a 3-month moving-average forecast for analysis and comparison.

## Save
Save the completed Power BI Desktop file as:

`PowerBI/Sales_Forecasting.pbix`

The `.pbix` file is intentionally not included in this package because it must be created in Power BI Desktop.
