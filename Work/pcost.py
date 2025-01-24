# pcost.py
#
# Exercise 1.27

with open('Data\portfolio.csv', 'rt') as infile:
    infile.__next__()
    total = 0
    for line in infile:
        row = line.split(',')
        total += int(row[1]) * float(row[2])
print(f'Total cost: {total:,.2f}')

import gzip
with gzip.open('Data\portfolio.csv.gz', 'rt') as infile:
    infile.__next__()
    total = 0
    for line in infile:
        row = line.split(',')
        total += int(row[1]) * float(row[2])
print(f'Total cost: {total:,.2f}')

def portfolio_cost(filename):
    try:
        with open(filename, 'rt') as infile:
            try:
                infile.__next__()

                total = 0
                for line in infile:
                    total += int(line[1]) * float(line[2])

            except ValueError as e:
                return f'Type not expected: {e.args}'

    except IOError as e:
        from os import strerror
        return "I/O error: ", strerror(e.errno)
    else:
        return total

print(portfolio_cost('Data/portfolio.csv'))
print(portfolio_cost('Data/missing.csv'))
print(portfolio_cost('Data/missing.cs'))


# Exercise 1.33
import csv
def portfolio_cost(filename):
    try:
        infile = open(filename, 'rt')
        f = csv.reader(infile)
        headers = f.__next__()
        total = 0
        for norow, row in enumerate(f, start=1):
            record = dict(zip(headers, row))
            try:
                total += int(record['shares']) * float(record['price'])

            except ValueError:
                print(f'Row {norow}: Couldn\'t convert: {row}')

    except IOError as e:
        from os import strerror
        return "I/O error: ", strerror(e.errno)
    else:
        infile.close()
        return total


print(portfolio_cost('Data/portfolio.csv'))
print(portfolio_cost('Data/missing.csv'))
print(portfolio_cost('Data/missing.cs'))

import sys
if len(sys.argv) == 2:
    filename = sys.argv[1]
else:
    filename = 'Data/portfoliodate.csv'

cost = portfolio_cost(filename)
print('Total cost:', cost)

print(portfolio_cost('Data/portfoliodate.csv'))

