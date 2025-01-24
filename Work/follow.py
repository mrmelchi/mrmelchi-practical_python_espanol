import os
import time

def follow(file_path):
    with open(file_path, 'r') as f:
        f.seek(0, os.SEEK_END)  # Mover el puntero del archivo 0 bytes desde el final del archivo
        while True:
            line = f.readline()
            if line == '':
                time.sleep(0.1)  # Dormir brevemente y reintentar
                continue
            fields = line.split(',')
            name = fields[0].strip('"')
            price = float(fields[1])
            change = float(fields[4])
            if change < 0:
                yield name, price, change




