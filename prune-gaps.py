
#---------------------
# Author: EB Dickinson, NIH NLM, Computational Biology Branch
# Date: Jan 16 2024 

# python prune-gaps.pl <pfram.stk file> <output.txt> <gap 5' end tolerance> <gap 3' end tolerance> 
# example usage
# python prune-gaps.pl example.pfam.stk example.output.txt 0 1
#----------------------

'''  
  "Live your life to the fullest"
  this script reads in a pfam.stk file
  and reads out the accession names
  that satisfy a certain number of gaps at 
  the beginning and the end of the sequence.
  One usage is to find "full" sequences
  where there are no gaps at 5' or 3' ends
  -EB '''
  
import sys
  
def count_gaps(string='', char='', start=True): #set string, character, and whether the string starts at the beginning
    count = 0 # set the count to zero
    
    if not start: #if the string doesn't start at the beginning
        string = string[::-1] # reverse it
    #print(f"String to count from: {string}") # check line 
    
    for k in string: # to count each character
        #print(f"Checking character: {k}")
        if k == char: 
            count += 1 # add one count
        else: # if not
            break # exit loop
    return count 

# create command arguments 
read_file = str(sys.argv[1]) # read in pfam.stk file 
output_file = str(sys.argv[2]) # read out accession names file
start_tolerance = int(sys.argv[3]) # 5' end (start) gap tolerance 
end_tolerance = int(sys.argv[4]) # 3' end (end) gap tolerance

print('')
print(f"with a start tolerance of {start_tolerance} and an end tolerance of {end_tolerance}, here are passing accessions:")
   
pass_seq = [] # create list called pass_seq , called a variable , appending a list

with open(read_file, 'r') as f:
    with open('seq4.txt','w') as f2: # print out sequence only
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
                seq = seq.strip() # cleans white-space
                
                start_count = count_gaps(seq, '-') # count gaps from beginning
                rev_seq = seq[::-1] # then reverse
                end_count = count_gaps(seq, '-', start=False) # count gaps from end
                #print(f"End count:", end_count)
                
                #f2.write(seq)
                
                with open(output_file, 'w') as f3:   
                    if ((start_count <= start_tolerance) and (end_count <= end_tolerance)): #if start gaps and end gaps are less than the tolerance
                        #print(f"this {accession_name} passes") 
                        
                        print('') # print a space
                        print("accession:", accession_name) # print accession mame
                        print(f"Start count:", start_count) # f is formatted string literal, print start_count
                        print(f"End count:", end_count) # print end count 
                        print(seq) # print the sequence for each accession
                        pass_seq.append(accession_name) # append the pass_seq list with accession names
                        
                    f3.write("\n".join(pass_seq)) # write out list into a str / txt.file 
                        

