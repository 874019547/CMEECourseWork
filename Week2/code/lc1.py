birds = ( ('Passerculus sandwichensis','Savannah sparrow',18.7),
          ('Delichon urbica','House martin',19),
          ('Junco phaeonotus','Yellow-eyed junco',19.5),
          ('Junco hyemalis','Dark-eyed junco',19.6),
          ('Tachycineata bicolor','Tree swallow',20.2),
         )

#(1) Write three separate list comprehensions that create three different
# lists containing the latin names, common names and mean body masses for
# each species in birds, respectively. 


latin_names = [bird[0] for bird in birds]
common_names = [bird[1] for bird in birds]
mean_body_masses = [bird[2] for bird in birds]


print("Latin names:", latin_names)
print("Common names", common_names)
print("Mean body masses", mean_body_masses)



# (2) Now do the same using conventional loops (you can choose to do this 
# before 1 !). 
latin_names = []
common_names = []
mean_body_masses = []

for bird in birds:
    latin_names.append(bird[0])
    common_names.append(bird[1])
    mean_body_masses.append(bird[2])


print("Latin names:", latin_names)
print("Common names:", common_names)
print("Mean body masses:", mean_body_masses)


 