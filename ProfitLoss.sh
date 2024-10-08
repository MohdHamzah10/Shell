#!/bin/bash
read -p "Enter the cost price of the item: " cost_p
read -p "Enter the selling price of the item: " sell_p
if (( $(echo "sell_p > $cost_p" | bc -l) ))
then
profit=$(echo "scale=2; $sell_p - $cost_p" | bc)
echo "Profit made: Rs. $profit"
elif (( $(echo "$cost_p > sell_p" | bc -l) ))
then
loss=$(echo "scale=2; $cost_p - $sell_p" | bc)
echo "Loss incurred: $loss"
else
echo "No Profit,,No Loss"
fi
