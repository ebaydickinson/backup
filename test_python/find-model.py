#---------------------
# Author: EB Dickinson, NIH NLM, Computational Biology Branch
# Date: Jan 31 2024 

# welcome instruction for my script

# example usage
# python prune-gaps.pl <accession_list.file> <percent_id.top50.alipid.perseq>  <output.file>

# (accession_list.file) to generate the accession_list.file of full sequences, look here: https://github.com/dickinson-ncbi/ncbi-scripts/blob/main/prune-gaps.py 
# maybe add readme explaining what full sequences are in prune-gaps.py 
# (percent_id.top50.alipid.perseq) to generate average pairwise identities for a group of sequences, look at step 5 here: https://github.com/ncbi/vadr/blob/master/documentation/advbuild.md#step5

#----------------------
import sys

# create command arguments 
accession_file = str(sys.argv[1]) # read in list file of full sequences generated from prune-gaps.py
perc_id_file = str(sys.argv[2]) # file listing top scoring average pairwise identities for a list a given sequences
output_file = str(sys.argv[3]) # if a full sequence matches a sequence with a top scoring percent identity, include in this list 

pass_seq = []



with open(accession_file, 'r') as f3:
acc_file = f3.readlines() # read lines in the accession_file   
       
with open(perc_id_file, 'r') as f:
    perc_id = f.readlines() #reads every line of the file
    linenum = 0 
    for line in perc_id: #goes line by line in var content
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
                    
            for line in acc_file: # iterate through each line in the accession file 
                if accession_name in acc_file: # if accession name is in accession_file
                    pass_seq.append(accession_name) # append accessopm mame to pass seq
                    print('we have found a match! Here is a full sequence that is the most closely related to all other sequences:')
                    print(f'accession: {accession_name}')
                    print(f'average percent id: {percent_id}')
                break
                    # else:
                    #     print('wahwah, no match found, expand selection of alipid preseq')
                
        
with open(output_file, 'w') as f2:
f2.write("\n".join(pass_seq)) # write out list into a str / txt.file

# if time, do the same thing with a hash                               
# the key of the hash is the sequence name
# the value is the percent identity

            # accession_name =        



