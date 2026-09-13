#!/bin/bash

# Simple Interest Calculator in Bash

echo "------------------------------------------------"
echo "           Simple Interest Calculator           "
echo "------------------------------------------------"

# Prompt user for principal amount
read -p "Enter Principal Amount ($): " principal

# Prompt user for annual rate of interest
read -p "Enter Annual Interest Rate (%): " rate

# Prompt user for time period in years
read -p "Enter Time Period (Years): " time

# Calculate Simple Interest using 'bc' for floating-point arithmetic
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total=$(echo "scale=2; $principal + $interest" | bc)

echo "------------------------------------------------"
echo "                  Results                       "
echo "------------------------------------------------"
echo "Principal Amount:      $$principal"
echo "Annual Interest Rate:  $rate%"
echo "Time Period:           $time year(s)"
echo "------------------------------------------------"
echo "Simple Interest:       $$interest"
echo "Total Amount Payable:  $$total"
echo "------------------------------------------------"
