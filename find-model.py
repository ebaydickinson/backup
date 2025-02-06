#---------------------
# Author: EB Dickinson, NIH NLM, Computational Biology Branch
# Date: Jan 31 2024 

# welcome instruction for my script

# example usage
# python find-model.py <percent_id.top50.alipid.perseq> <accession_list.file> <output.file>

# (accession_list.file) to generate the accession_list.file of full sequences, look here: https://github.com/dickinson-ncbi/ncbi-scripts/blob/main/prune-gaps.py 
# maybe add readme explaining what full sequences are in prune-gaps.py 
# (percent_id.top50.alipid.perseq) to generate average pairwise identities for a group of sequences, look at step 5 here: https://github.com/ncbi/vadr/blob/master/documentation/advbuild.md#step5

#----------------------
import sys

# create command arguments 
perc_id_file = str(sys.argv[1]) # file listing top scoring average pairwise identities for a list a given sequences
accession_file = str(sys.argv[2]) # read in list of full sequences generated from prune-gaps.py
output_file = str(sys.argv[3]) # if a full sequence matches a sequence with a top scoring percent identity, include in this list 

pass_seq = [] # list of passing sequences 

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
            accession_name = accession_name.strip() # cleans white-space
            #print(accession_name)
                    
            for line in acc_file: # iterate through each line in the accession file 
                line = line.strip()
                #print(f'line:{line}')
                #print(f'accession:{accession_name}')
                if accession_name == line:
                    pass_seq.append(accession_name) # append accession name to pass seq
                    pass_seq.append(percent_id) # append percent_id to pass seq
                    print(f'{accession_name} {percent_id}')
                    #print(f'average percent id: {percent_id}')

                
with open(output_file, 'w') as f2:
    f2.write("\n".join(pass_seq)) # write out list into a str / txt.file



