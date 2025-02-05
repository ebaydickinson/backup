import sys

# I want the system arguments to look like this 

# my_txt_file = sys.argv[1]

# with open(my_txt_file, 'r') as f:
#     f_cont = f.read()
#     print(f_cont)
    
# def get_string_by_length(length):
#     """Gets the first command line argument matching the specified length."""
#     for arg in sys.argv[1:]:  # Skip the script name (sys.argv[0])
#         if len(arg) == length:
#             return arg
#     return None

# if __name__ == "__main__":
#     length = int(input("Enter the desired string length: "))
#     result = get_string_by_length(length)

#     if result:
#         print(f"Found string with length {length}: {result}")
#     else:
#         print(f"No string with length {length} found.")

# name = "EB"
# government_name = "Emma"
# print(f"I go by {name}, not {government_name}.")

# a = 0 
# '''
#     if tests both conditions separately
#     ex. is a more than zero, is a less than zero, 
#     if and elif, if only tests the first block '''

# def random_function(a): 
#     if a > 0: 
#         return 'positive'
#     if a < 0: #if I use elif, the answer is negative, if I use two ifs, the answer is neither 
#         return 'negative'
#     else:
#         return 'neither'

# print(random_function(a))
# counter = 0

# ---------------------------

from datetime import datetime

def get_time() -> str: # specify a return type
    now: datetime = datetime.now
    return now 
    

# for i in sys.argv: # iterate through sys.argv
#     counter += 1
#     print("argument {}: {}".format(counter, 1))