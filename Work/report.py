# Exercise 2.4
# report.py
import csv


def read_portfolio(filename):
    '''
    Read a stock portfolio file into a list of dictionaries with keys
    name, shares, and price.
    '''
    portfolio = []
    with open(filename) as f:
        rows = csv.reader(f)
        headers = next(rows)

        for row in rows:
            record = dict(zip(headers, row))
            holding = {
                 'name': record['name'],
                 'shares': int(record['shares']),
                 'price': float(record['price'])}

            portfolio.append(holding)
    return portfolio


def read_prices(filename):
    '''
    Read a CSV file of price data into a dict mapping names to prices.
    '''
    prices = {}
    with open(filename) as f:
        rows = csv.reader(f)
        for row in rows:
            try:
                prices[row[0]] = float(row[1])
            except IndexError:
                pass

    return prices


#portfolio = read_portfolio('Data/portfolio.csv')
#prices = read_prices('Data/prices.csv')

# # Calculate the total cost of the portfolio
# total_cost = 0.0
# for asset in portfolio:
#     total_cost += asset['shares'] * asset['price']
#
# print('Total cost', total_cost)
#
# # Compute the current value of the portfolio
# total_value = 0.0
# for asset in portfolio:
#     total_value += asset['shares'] * prices[asset['name']]
#
# print(f'Current value, {total_value:,.2f}')
# print(f'Gain, {total_value - total_cost:,.2f}')


def make_report(portfolio, prices):
    report = []
    for share in portfolio:
        name = share['name']
        shares = share['shares']
        price = prices[name]
        change = price - share['price']
        holding = (name, shares, price, change)
        report.append(holding)
    return report

def print_report(report):
    headers = ('Name', 'Shares', 'Price', 'Change')
    print('%10s %10s %10s %10s' % headers)
    print(('-' * 10 + ' ') * len(headers))
    for row in report:
        print('%10s %10d %10.2f %10.2f' % row)

def portfolio_report(portfolio_filename, prices_filename):
    portfolio = read_portfolio(portfolio_filename)
    prices = read_prices(prices_filename)
    report = make_report(portfolio, prices)
    print_report(report)

           |                                                                                                                                                                                                                                              
files = ['Data/portfolio.csv', 'Data/portfolio2.csv']
for name in files:
        print(f'{name:-^43s}')
        portfolio_report(name, 'Data/prices.csv')
        print()
# headers = ('Name', 'Shares', 'Price', 'Change')
# sub = '-' * len(headers[0]), '-' * len(headers[1]), '-' * len(headers[2]), '-' * len(headers[3])
# print(f'{headers[0]:>10s} {headers[1]:>10s} {headers[2]:>10s} {headers[3]:>10s}')
# print(f'{sub[0]:>10s} {sub[1]:>10s} {sub[2]:>10s} {sub[3]:>10s}')
# for r in report:
#     name, shares, price, change = r
#     currency = '${price:>.2f}'.format(price=price)
#     print(f'{name:>10s} {shares:>10d} {currency:>10} {change:>10.2f}')



