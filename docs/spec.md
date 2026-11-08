Screen: Order Summary shows the order's item name, quantity and total price.
Inputs: item name (String), quantity (int) and unit price (double).
Output: the item name, the quantity and the total as "RM 25.00", plus a Back button.
Rules: the total comes from orderTotal(quantity, unitPrice) in lib/order.dart, shown with 2 decimals.
Out of scope: payment, editing the quantity, saving orders, and changes to any other file.
Check: for Cheese Pizza, quantity 2, unit price 12.50, the screen shows RM 25.00 and Back returns to the previous screen.