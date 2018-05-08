GrossIncome = float(input("Gross income = "))

if (GrossIncome <= 18200):
    TaxPayable = 0
elif (GrossIncome <= 37000):
    TaxPayable = 0.19 * (GrossIncome - 18200)
elif (GrossIncome <= 87000):
    TaxPayable = 3572 + 0.325 * (GrossIncome - 37000)
elif (GrossIncome <= 180000):
    TaxPayable = 19822 + 0.37 * (GrossIncome - 87000)
else:
    TaxPayable = 54532 + 0.45 * (GrossIncome - 180000)

NetIncome = GrossIncome - TaxPayable
print('TaxPayable = $%.2f' % TaxPayable)
print('After-tax Income = $%.2f' % (GrossIncome - TaxPayable))
