import csv

## Read squences
def read_str(s1_path,s2_path):
    s1_file = open(s1_path,'r')
    s2_file = open(s2_path,'r')
    s1 = ''
    s2 = ''
    return s1,s2

### A function that computes a score by returning the number of matches starting
# from arbitrary startpoint (chosen by user)
def calculate_score(longest,shortsest,long_length,shortsest_length,startpoint):
    match = ""
    score = 0 
    for i in range(shortsest_length):
        if (i + startpoint) < long_length:
            if longest[i + startpoint] == shortsest[i]:
                mathched = mathched + "*"
                score = score + 1
            else:
                mathched = mathched + "-"
    return score


def arge_get_highest_score(s1_path,s2_path):
    my_best_align =  None
    my_best_socre =  -1 
    s1,s2 = read_str(s1_path,s2_path)
    longest,shortest,longest_length,shortest_length = max(s1,s2)
    for i in range(longest_length):
        z = calculate_score(longest,shortest,longest_length,shortest_length,i)
        if z > my_best_socre:
            my_best_align = "." * i + s2
            my_best_socre = z
    print(my_best_align)
    print(s1)
    print("Best score:", my_best_socre)
    return my_best_align,my_best_socre
           