# mortgage.py
#
# Exercise 1.7

principal = 500000
rate = 0.05
term = 30
payment = round(((1+rate/12)**(term*12) * rate/12) / ((1+rate/12)**(term*12) - 1) * principal, 2)
total_paid = 0
number_payment = 1
extra_payment_start_month = 61
extra_payment_end_month = 108
extra_payment = 1000

while principal > 0:
    if number_payment <= extra_payment_end_month and number_payment >= extra_payment_start_month:
        principal = principal * (1+rate/12) - payment - extra_payment
        total_paid = total_paid + payment + extra_payment
        if principal < 0:
            total_paid += principal
            principal = 0
    else:
        principal = principal * (1 + rate / 12) - payment
        total_paid = total_paid + payment
        if principal < 0:
            total_paid += principal
            principal = 0
    print(f'{number_payment} payments made, total paid {round(total_paid, 2):,.2f}, principal {round(principal, 2):.2f}')
    number_payment += 1


print(f'Total paid: {round(total_paid, 2):,.2f}')
print('Months:', number_payment - 1)