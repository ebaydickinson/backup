
import sys

# create command arguments 
stk_file = str(sys.argv[1]) # read in list file of full sequences generated from prune-gaps.py
#output_file = str(sys.argv[2]) # if a full sequence matches a sequence with a top scoring percent identity, include in this list 

#pass_seq = []

with open(stk_file, 'r') as f:
    stk_file = f.readlines() #reads every line of the file
    linenum = 0 
    for line in stk_file: #goes line by line in var content
        if line.startswith('gi'): 
            ''' pull just the 
                sequence and accession
                number '''
            res = line.split() #splitting line by white space
            splitString = res[1] # split string pulls out percent_id
            title = line.split('|') # split using the character |
            accession_name = title[3] # accesion name is the third character
            percent_id = splitString # just the sequence 
            percent_id = percent_id.strip() # cleans white-space
            print(accession_name)
            