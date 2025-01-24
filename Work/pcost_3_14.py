# pcost.py
#
# Exercise 3.14

import report_3_12

def portfolio_cost(filename):
    '''
    Computes the total cost (shares*price) of a portfolio file
    '''

    portfolio = report_3_12.read_portfolio(filename)
    return sum([line['shares'] * line['price'] for line in portfolio])


# # Main function
def main(argv):
    # Parse command line args, environment, etc.
    if len(argv) == 2:
        total_cost = portfolio_cost(argv[1])
    else:
        total_cost = portfolio_cost(argv[0])
    print(f'Total cost: {total_cost:,.2f}')

if __name__ == '__main__':
    import sys

    if len(sys.argv) == 2:
        main([sys.argv[1]])
    else:
        main(['Data/portfolio.csv'])
