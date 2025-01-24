# Exercise 3.12
# report_3_12.py

import fileparse


def read_portfolio(filename):
    '''
    Read a stock portfolio file into a list of dictionaries with keys
    name, shares, and price.
    '''
    with open(filename) as lines:
        return fileparse.parse_csv(lines, types=[str, int, float])

def read_prices(filename):
    '''
    Read a CSV file of price data into a dict mapping names to prices.
    '''
    with open(filename) as lines:
        return dict(fileparse.parse_csv(lines, types=[str, float], has_headers=False))

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

# Main function
def main(argv):
    # Parse command line args, environment, etc.
    if len(argv) == 3:
        portfolio_report(argv[1], argv[2])
    else:
        portfolio_report(argv[0], argv[1])

if __name__ == '__main__':
    import sys

    if len(sys.argv) == 3:
        main([sys.argv[1], sys.argv[2]])
    else:
        main(['Data/portfolio.csv',  'Data/prices.csv'])

# files = ['Data/portfolio.csv', 'Data/portfolio2.csv']
# for name in files:
#         print(f'{name:-^43s}')
#         portfolio_report(name, 'Data/prices.csv')
#         print()


