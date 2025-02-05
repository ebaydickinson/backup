#---------------------
# Author: EB Dickinson, NIH NLM, Computational Biology Branch
# Date: Jan 28 2024 

# welcome instruction for my script

# example usage
# python prune-gaps.pl <accession_list.file> <percent_id.txt>  

# 404 Error Page
# the gay pages are down
# kids can't read or write
# just mindlessly consuming
# what do we do

#----------------------
import sys

# create command arguments 
accession_file = str(sys.argv[1]) # read in pfam.stk file 
perc_id_file = str(sys.argv[2])
output_file = str(sys.argv[3])
#output_file = str(sys.argv[3]) # read out accession names file

# list_perc_id = set(perc_id_file)
# list_accession = 

pass_seq = []

# def pull_matching_accessions(file1, file2):
#         set_PI = set(perc_id_file.readlines())
#         set_acc = set(accession_file.readlines())
#         similar_items = set_PI.intersection(set_acc)
        
        #return similar_items
  
# with open(accession_file, 'r') as f,        
with open(perc_id_file, 'r') as f:
    perc_id = f.readlines() #reads every line of the file
    linenum = 0 
    for line in perc_id: #goes line by line in var content
        if line.startswith('gi'): 
            ''' pull just the 
                sequence and accession
                number '''
            res = line.split() #splitting line by white space
            splitString = res[1] # split string pulls out just the sequence
            title = line.split('|') # split using the character |
            accession_name = title[3] # accesion name is the third character
            percent_id = splitString # just the sequence 
            percent_id = percent_id.strip() # cleans white-space
            #print(accession_name)
            
            with open(output_file, 'w') as f3:
                with open(accession_file, 'r') as f2: 
                    acc_file = f2.readlines()
                    for line in acc_file:
                        if accession_name in acc_file:
                            pass_seq.append(accession_name)
                            print(f'accession: {accession_name}')
                            print(f'average percent id: {percent_id}')
                        break
                            
                f3.write("\n".join(pass_seq)) # write out list into a str / txt.file 
                
                # tomorrow, make sure to figure out to print out just one accession rather than iterating 
                # through the entire list
                # and then print the percent_id
                # how does eric print out it in a graph format
                           
                    #f3.write("\n".join(pass_seq))
                
            # with open(output_file, 'w') as f3:  
            #     if accession_name in perc_id_file:
            #         print(accession_name)
            #         pass_seq.append(accession_name)
                
            #     f3.write("\n".join(pass_seq))
                    
    # matching_accessions = pull_matching_accessions(accession_file, perc_id_file)
    # print(matching_accessions)

# with open(accession_file, 'r') as  f2:
#     lines = f2.readlines()
    

    # if lines in accession_file and accession_name in perc_id_file:
        # print("Item found in both lists")          
    
                
            
                
                
            
# the key of the hash is the sequence name
# the value is the percent identity

            # accession_name =        



