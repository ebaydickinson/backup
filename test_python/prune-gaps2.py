import sys

# I want this to look like:
# python prune-gaps.py ex.txt 0 3 
''' 
  where the txt file is listed
  along with the beginning and end tolerance
  and the output is:
  accession name, gaps at the beginning and end,
  and the sequence '''
  
# then I can figure out exporting as a pfam.stk file 

my_txt_file = sys.argv[1] # what does this do?

# with open(my_txt_file, 'r') as f: # define when a .txt file is specified in prune-gaps.py
#     f_cont = f.read() # z.B python prune-gaps.py test2.pfam.stk
#     print(f_cont) # prints the .stk file
    
with open('test2.pfam.stk') as f: #transform test2.pfam.stk into a class 'str'
    with open('seq4.txt','w') as f2:
        content = f.readlines() #reads every line of the file
        linenum = 0
        for line in content: #goes line by line in var content
            if line.startswith('gi'): 
                ''' pull just the 
                    sequence and accession
                    number '''
                res = line.split() #splitting line by white space
                splitString = res[1] # split string is the sequence
                title = line.split('|')
                accession_name = title[3]
                seq = splitString
                #seq = accession_name + " " + splitString
                #print(seq) # accession name added to split string
                seq = seq.strip() # cleans white-space
                
                # f2.write(seq)
                
                # start = True: Count the chars at the beginning of the string
                # start = False: Count the chars at the end of the string
                
                 #function to count the gaps at the start and end of the sequence
                def count_gaps(string='', char='', start=True): #set string, character, and whether the string starts or not at the beginning
                   count = 0 # set the count to zero
                   
                   if not start: #once the string doesn't start at the beginning
                       string = string[::-1] # reverse it
                   #print(f"String to count from: {string}") # check line 
                   
                   # a = start_tolerance, b = end_tolerance
                   # start_tolerance = 3
                   # end_tolerance = 3 
                   
                   for k in string: # to count each character
                        #print(f"Checking character: {k}")
                        if k == char: 
                            count += 1 # add one count
                        else: # if not
                            break # exit loop
                   return count 
        
                # print('')
                print("accession:", accession_name)
                start_count = count_gaps(seq, '-')
                rev_seq = seq[::-1]
                end_count = count_gaps(seq, '-', start=False)
                print(f"Start count:", start_count)
                print(f"End count:", end_count)
                
                # print()
                
                # print(seq)
    
                # def extract_sequence(arg, start_tolerance, end_tolerance):
                #     '''Buckets(arguments) for arg, start_tolerance, end_tolerance'''
                #     for arg in sys.arg[1:]: # skip script name 
                #         if sys.arg[2] == start_tolerance: #if the second argument is equal to the start tolerance
                #             return arg

                #         if sys.arg[3] == end_tolerance: #the third argument is equal to the end tolerance
                #             return arg
                #     return None 
                
    
                # argument = sys.argv[1]
                start_tolerance = int(sys.argv[2])
                end_tolerance = int(sys.argv[3])
                
                print(f"Start_tolerance:", start_tolerance)
                print(f"End tolerance:", end_tolerance)
                   
                # pruned_sequence = extract_sequence(argument, start_tolerance, end_tolerance)
                # print(pruned_sequence, accession_name)
                    
# def extract_sequences(arg, start_tolerance, end_tolerance):
#     """Buckets(arguments) for arg, start_tolerance, end_tolerance, 
#     """
#     for arg in sys.arg[1:]: # skip script name 
#         if sys.arg[2] == start_tolerance:
#             return arg

#         if sys.arg[3] == end_tolerance
#         return arg
#     return None

# if __name__ == "__main__": # only executes when you run the file as a script
#     print(start_count)
    
# argument = sys.argv[1]
# start_tolerance = int(sys.argv[2])
# end_tolerance = int(sys.argv[2])

#     #start_tolerance = int(input("Enter the desired start gap tolerance: "))
#     #end_tolerance = int(input("Enter the desired end gap tolerance: "))
#     #result = prune_gaps(string='', start_tolerance='', end_tolerance='', start=True) # need it to pull the accession name out here
    
#     if result:
#         print(f"Found string with {start_tolerance} and {end_tolerance}: {accession_name}")
#     else:
#         print(f"oops no sequence with {start_tolerance} and {end_tolerance} found, dumdum, try again")  