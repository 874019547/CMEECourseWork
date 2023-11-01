NopreallocFun <- function(x){
    a <- vector()#empty vector
    for (i in 1:x){
        a <- c(a,i)#concatenate
        print(a)
        print(object.size(a))
    }
}

system.time(NopreallocFun(10))

###
Preallocfun <- function(x){
    a <- rep(NA,x)#pre-allocated vector
    for(i in 1:x){
        a[i] <- i
        print (a)
        print(object.size(a) )
    }
}
system.time(Preallocfun(10))