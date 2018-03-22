# 44196539 - Thanh Son LE      
# ACST 890 - 2018         
# Take-home quiz 1         



# QUESTION 1
# input the value of n
n = 10
# create an integer vector of length n which stores the value of Fibonacci sequence
f = vector(mode = "integer", length = n)
# initiate the value of f[1]
f[1] = 1
# initiate the value of f[2]
f[2] = 1
# calculate values of f[i] for i = 3..n
for (i in 3:n) f[i] = f[i-1] + f[i-2]
# print the result in each line with the format f[1] = 1; f[2] = 1...
for (i in 1:n) print(paste0("f[", i, "] = ", f[i]))



# QUESTION 3
# Part a
# read data from file, make sure the data file is in current working directory
# also reformat NA cells
dataset = read.csv("PersonenSchaden.csv", header = TRUE, na.strings = c("", "N", " "))

# Part b
# mean
totalMean = mean(dataset$total)
# variance
totalVariance = var(dataset$total)
# standard deviation
totalSD = sd(dataset$total)
# median
totalMedian = median(dataset$total)
# smallest settled claim
totalMin = min(dataset$total)
# largest settled claim
totalMax = max(dataset$total)
# top quartile
totalTopQuartile = quantile(dataset$total, 0.75)
# bottom quartile
totalBottomQuartile = quantile(dataset$total, 0.25)

# Part c
hist(dataset$total, nclass = 100, xlab = "Total", main = "Histogram of Total")

# Part d
# number of months between the accident and finalisation month
delay = dataset$finmonth - dataset$accmonth
hist(delay, nclass = 100, xlab = "Delay", main = "Histogram of Delay")

# Part e
h = hist(dataset$legrep, freq = FALSE)
# calculate proportions
h$counts = h$counts/sum(h$counts)
plot(h, xlab = "Legal presentation", ylab = "Proportion", main = "Histogram of Legal presentation")

# Part f
# use rbind to merge all injury code from 5 columns into one, then plot histogram from this combination
h = hist(rbind(dataset$inj1, dataset$inj2, dataset$inj3, dataset$inj4, dataset$inj5), freq = FALSE)
# calculate proportions
h$counts = h$counts/sum(h$counts)
plot(h, xlab = "Injury code", ylab = "Proportion", main = "Histogram of Injury code")

# Part h
hist(log(dataset$total), nclass = 100, xlab = "Log of claims", main = "Histogram of the log of claims")

# Part i
plot(dataset$op_time, dataset$total, main = "Claim size versus operational time", ylab = "Claim size", xlab = "Operational time")
plot(dataset$op_time, log(dataset$total), main = "Log of claim size versus operational time", ylab = "Log of claim size", xlab = "Operational time")

# Part k
# red for legrep = 0, green for legrep = 1
plot(dataset$op_time, log(dataset$total), main = "Log of claim size versus operational time",
    ylab = "Log of claim size", xlab = "Operational time",
    col = c("red", "green")[dataset$legrep+1])