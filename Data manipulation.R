#To extract particular data column from a dataset we can use the select fucntion from the 
##. dataset to select the columns eg:- laptops %>% select(1,2) -> laptops1_2 this would selec the 2 columns from the dataframe.
# eg. to have a specific range of columns so: laptops %>% select(3:6) -> laptops3_6
# eg. to have a specific columns so we can use : laptops %>% select("Company,"Product","Price_euros") -> laptops_cpp
# eg. to have all the data regarding the starting letter of P so eg: laptops %>% select(starts_with("P")) -> laptops_P
#eg. to have all the data regarding the ending letter of s so eg: laptops %>% select(ends_with("s")) -> laptops_s


# filter function----

# if you want to extract a specific record from the dataset then you can use the filter function for the purpose i.e. laptops %>% filter(Company == "Dell") -> laptops_Dell
#filter function is a part of deplyr function
# if you want to use the laptop where it has a specific inches thing so for eg.: laptops %>% filter(inches>15) -> laptops_inch_15inch. here it is greater than 15 inch
# if u want to be more specific where you want to extract from a specific company and the specific inch so for example : eg: laptops %>% filter(Company == "Dell" & Inches>15) -> laptops_dell_15inches

#Combining select & filter function

# eg: laptops %>% select("Company","Product","Price_euros") %>% filter(Company == "Dell") -> laptop_final
#Another eg: laptops %>% select("Company","Product","Price_euros") %>% filter(Company == "Lenovo" & Ram == "4GB") -> laptop_final


