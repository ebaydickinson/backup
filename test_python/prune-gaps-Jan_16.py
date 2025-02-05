import sys

#---------------------
# Author: EB Dickinson, NIH NLM, Computational Biology Branch
# Date: Jan 16 2024 

# welcome instruction for my script

# example usage
# python prune-gaps.pl <pfram.stk file> -<output.txt> <gap 5' end tolerance> <gap 3' end tolerance> 

#----------------------

''' 
  where the txt file is listed
  along with the beginning and end tolerance
  and the output is:
  accession name, gaps at the beginning and end,
  and the sequence '''
  
# then I can figure out exporting as a pfam.stk file 

# my_txt_file = sys.argv[1] # what does this do?

# with open(my_txt_file, 'r') as f: # define when a .txt file is specified in prune-gaps.py
#     f_cont = f.read() # z.B python prune-gaps.py test2.pfam.stk
#     print(f_cont) # prints the .stk file

def count_gaps(string='', char='', start=True): #set string, character, and whether the string starts or not at the beginning
    count = 0 # set the count to zero
    
    if not start: #if the string doesn't start at the beginning
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

# for command arguments, 
read_file = str(sys.argv[1])
output_root = str(sys.argv[2])
start_tolerance = int(sys.argv[3])
end_tolerance = int(sys.argv[4])


print(f"with a start tolerance of {start_tolerance} and an end tolerance of {end_tolerance}, here are passing accessions:")
   
pass_seq = [] # create list (bowl) called pass_seq , called a variable , appending a list

with open(read_file, 'r') as f: #transform test2.pfam.stk into a class 'str'
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
                title = line.split('|') # split using the character |
                accession_name = title[3] # accesion name is the third character?
                seq = splitString # just the sequence 
                #seq = accession_name + " " + splitString
                #print(seq) # accession name added to split string
                seq = seq.strip() # cleans white-space
                
                #print('')
                #print("accession:", accession_name) 
                start_count = count_gaps(seq, '-')
                rev_seq = seq[::-1]
                end_count = count_gaps(seq, '-', start=False)
                #print(f"Start count:", start_count) # f is formatted string literal 
                #print(f"End count:", end_count)
                
                #f2.write(seq)
                
            #with open('pass_seq.txt') as f3:
                with open(output_root, 'w') as f3:   
                    if ((start_count <= start_tolerance) and (end_count <= end_tolerance)): #if start gaps and end gaps are less than the tolerance
                        #print(f"this {accession_name} passes") 
                        
                        print('') # print a space
                        print("accession:", accession_name) # print accession mame
                        print(f"Start count:", start_count) # f is formatted string literal, start_count
                        print(f"End count:", end_count)
                        print(seq) # print the sequence for each accession
                        pass_seq.append(accession_name)
                        
                    f3.write("\n".join(pass_seq)) # write out list into a txt.file 
                        
# parser = argparse.ArgumentParser(description="Print the accession list") 
# parser.add_argument("filename", help="file name to process") # add positional argument
# parser.add_argument("-l", "--list", action="store_true", help="Generate accession list") # add optional argument

# args = parser.parse_args()

# print("Filename:", args.filename)
# if args.list:
#     print("list mode enabled")
                    
                
            
               # else: 
                #    print(f"this {accession_name} doesn't pass")
                     
                     
                
                     
            
                                    
                #print(f"Start_tolerance:", start_tolerance)
                #print(f"End tolerance:", end_tolerance)

                
                
                # start = True: Count the chars at the beginning of the string
                # start = False: Count the chars at the end of the string
                

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

    #function to count the gaps at the start and end of the sequence


