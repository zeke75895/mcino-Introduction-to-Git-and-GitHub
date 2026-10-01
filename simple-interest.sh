#!/bin/bash

# simple-interest.sh
# A simple interest calculator that takes principal, rate of interest,
# and time period as input and computes the simple interest.

echo "======================================"
echo "     Simple Interest Calculator       "
echo "======================================"

# Prompt the user for input
read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (in %): " rate
read -p "Enter the time period (in years): " time

# Calculate simple interest
# Formula: SI = (Principal * Rate * Time) / 100
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display the result
echo "--------------------------------------"
echo "Principal Amount : $principal"
echo "Rate of Interest : $rate%"
echo "Time Period      : $time years"
echo "--------------------------------------"
echo "Simple Interest  : $simple_interest"
echo "Total Amount     : $(echo "scale=2; $principal + $simple_interest" | bc)"
echo "--------------------------------------"
