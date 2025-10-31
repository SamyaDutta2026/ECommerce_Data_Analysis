import pandas as pd
import numpy as np

try:
    df = pd.read_csv('e_commerce_data.csv')
except FileNotFoundError:
    print("ERROR: e_commerce_data.csv not found. Make sure it's in the same directory.")
    exit()

df['OrderDate'] = pd.to_datetime(df['OrderDate'])

initial_rows = len(df)
df.drop_duplicates(inplace=True)
print(f"Removed {initial_rows - len(df)} duplicate rows.")

def calculate_profit(row):
    if row['ProductCategory'] == 'Electronics':
        return row['SalesRevenue'] * 0.15
    elif row['ProductCategory'] == 'Clothing':
        return row['SalesRevenue'] * 0.25
    else:
        return row['SalesRevenue'] * 0.20

df['Profit'] = df.apply(calculate_profit, axis=1)

df['Monthly'] = df['OrderDate'].dt.to_period('M')
monthly_sales = df.groupby('Monthly')['SalesRevenue'].sum().reset_index()
monthly_sales['SalesRevenue_MA3'] = monthly_sales['SalesRevenue'].rolling(window=3, min_periods=1).mean()

df.to_csv('cleaned_data.csv', index=False)
monthly_sales.to_csv('monthly_sales_kpi.csv', index=False)

print("\nFinal Cleaned Data Preview")
print(df.head())
print("\nMonthly Sales with 3-Month Moving Average")
print(monthly_sales)
print("\nSUCCESS: Cleaned data exported to 'cleaned_data.csv' and 'monthly_sales_kpi.csv'")
