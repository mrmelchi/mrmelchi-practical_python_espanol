# hipoteca

capital = 500000
interes = 0.05
cuota = 2684.11
i = 0
total_pagado = 0
pago_extra_mes_inicio = 61
pago_extra_mes_final = 108
anticipo = 1000
pago_final = False

while capital > 0:
    if i in range(pago_extra_mes_inicio - 1, pago_extra_mes_final):
        pago_final = capital +  (capital * interes / 12) < cuota + anticipo
        if pago_final:
            amort = capital
        else:
            amort = cuota + anticipo - (capital * interes / 12)
        capital -= amort
        total_pagado += cuota + anticipo
    else:
        pago_final = capital +  (capital * interes / 12) < cuota
        if pago_final:
            amort = capital
        else:
            amort = cuota - (capital * interes / 12)
        capital -= amort
        total_pagado += cuota
    i += 1
    print('{} pago(s) hecho(s), total pagado {:,.3f}, capital {:,.3f}'.format(i, total_pagado, capital))

    
print('total pagado: {:.0f}'.format(total_pagado))
print('meses: {}'.format(i))

