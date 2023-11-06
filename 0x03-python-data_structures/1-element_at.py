#!/usr/bin/python3
def element_at(my_list, idx):
    if idx < 0 or idx >= len(my_list):
        return None
    else:
        return my_list[idx]

my_list = [1, 2, 3, 4, 5]

result = element_at(my_list, 2)
print(result)  # This will print 3

result = element_at(my_list, 10)
print(result)  # This will print None

result = element_at(my_list, -1)
print(result)  # This will print None


