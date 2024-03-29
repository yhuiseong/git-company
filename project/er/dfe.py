for y in range(15, -15, -1):
    row = []
    for x in range(-30, 30, 1):
        x /= 15
        y /= 10
        formula = (x*x + y*y - 1)**3 - x*x*y*y*y
        if formula <= 0:
            row.append('*')
        else:
            row.append('*')
        x *= 15
        y *= 10
    print(' '.join(row))
