## This function calculates height of trees given distance of each tree 
##from is base and angle to tis top, using the trigonometric formula

#Height = distance * tan(radians)

#ARGUMENts  
#degree: The angle of 
#distance: The distance from base of tree(e.g meter)

#Output
#The hights of the tree,same units as "distance "

TreeHeight <- function(degree,distance){
    radians <- degree * pi /180
    height <- distance *tan(radians)
    print(paste("Tree height is:",  height))
    return(height)
}
TreeHeight(37,40)