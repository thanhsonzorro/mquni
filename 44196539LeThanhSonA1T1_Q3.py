GrossIncome = float(input("Gross income = "))

TaxPayable = 0
TaxableIncome = [0, 18200,  37000, 87000, 180000]
Rate = [0, 0.19, 0.325, 0.37, 0.45]
n = GrossIncome

for i in range(4,-1,-1):
	if (n > TaxableIncome[i]):
		TaxPayable = TaxPayable + Rate[i] * (n - TaxableIncome[i])
		n = TaxableIncome[i]

TaxPayable = float("%.2f" % TaxPayable)
NetIncome = float("%.2f" % (GrossIncome - TaxPayable))
print("Tax Liability =", TaxPayable)
print("After-tax Income =", NetIncome)
