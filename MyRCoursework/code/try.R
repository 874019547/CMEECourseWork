doit <- function(x){
    tem_x <-sample(x,replace = TRUE)
    if(length(unique(temp)) >30){##only take mean if sample was sufficient
    print(paste("Mean of this sample:",as.character(Mean(tem-x))))
    }
    else{
        stop("Couldnt calculate mean: too few unique values!")
    }
}

set.seed(1345)
popn <- rnorm(50)
hist(popn)

lapply(1:15, function(i) doit(popn))

result <- lapply(1:15, function(i) try(doit(popn), FALSE))