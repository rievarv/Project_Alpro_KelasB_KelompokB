a = float(input("Masukkan nilai a: "))
b = float(input("Masukkan nilai b: "))
c = float(input("Masukkan nilai c: "))

D = b**2 - 4*a*c

if D < 0:
    print("Persamaan hanya memiliki akar imajiner")
else:
    x1 = (-b + math.sqrt(D)) / (2*a)
    x2 = (-b - math.sqrt(D)) / (2*a)

    print(f"Akar 1 = {x1:.3f}")
    print(f"Akar 2 = {x2:.3f}")
