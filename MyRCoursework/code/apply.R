## build random martrix
M <- matrix(rnorm(100),10,10)
##Take the mean of each row
RowMeans <- apply(M,1,mean)
print(RowMeans)

##Now the variance
RowMeans <- apply(M, 1, var)
print(RowMeans)

## By column
ColMeans <- apply(M, 2, mean)
print(ColMeans)
