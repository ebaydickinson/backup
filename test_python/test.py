# read in and write out an stk file (pfam version )
# $VADRINFERNALDIR/esl-reformat pfam va-zikv-ZB.1-asian.vadr.NC_035889.align.stk > va-zikv-ZB.1-asian.pfam.stk

print('hello world')

# what working directory am I in?
import os
cwd = os.getcwd()
print(cwd)

## Read ("r") (default) Opens a file for reading. Will return error if the file doesn't exist
## Append ("a") Opens a file and adds text to the end. Will create the file if it doesn't exist
## Write ("w")  Opens a file and overwrites existing text. Will create the file if it doesn't exist
## Create ("x") Creates a file with filename. Returns an error if the file DOES exist


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
                seq = seq.strip()
                
                f2.write(seq)
                
                # start = True: Count the chars at the beginning of the string
                # start = False: Count the chars at the end of the string
        
                #function to count the gaps at the start and end of the sequence
                def count_gaps(string='', char='', start=True): #set string, character, and whether the string starts or not at the beginning
                   count = 0 # set the count to zero
                   
                   if not start: #once the string doesn't start at the beginning
                       string = string[::-1] # reverse it
                   #print(f"String to count from: {string}") # check line 
                   
                   for k in string: # to count each character
                        #print(f"Checking character: {k}")
                        if k == char: 
                            count += 1 # add one count
                        else: # if not
                            break # exit loop
                   return count 
        
                print('')
                print("accession:", accession_name)
                start_count = count_gaps(seq, '-')
                #rev_seq = seq[::-1]
                end_count = count_gaps(seq, '-', start=False)
                print(f"Start count:", start_count)
                print(f"End count:", end_count)
        
                print(seq)
                
                #print(f"Original sequence: {seq}")
                #print(f"Reversed sequence: {rev_seq}")
                
                def full_seq_output(string='', start_tolerance='', end_tolerance='', start=True)
        
                   count = 0 # set the count to zero
                   
                   if not start: #once the string doesn't start at the beginning
                       string = string[::-1] # reverse it
                   #print(f"String to count from: {string}") # check line 
                   
                   for k in string: # to count each character
                        #print(f"Checking character: {k}")
                        if k == char: 
                            count += 1 # add one count
                        else: # if not
                            break # exit loop
                   return count 

                
                
                
            
                
                

                # count = 0
                # for k in seq:
                #     if(k > 0):
                #        count += 1
                #     print(count) 
        
                
        
                # def count_gaps(k):
                #     if(k)
                    
                #     for k in line:
                #         if(k > 0)
                #             count += 1
                #         else:
                #             break
                #         return count
                    
                     
                     
                     
                     
                    #  return rev_seq
                    #  print(rev_seq)
                    #  t.write()
                
                    
                

                # def count_gap(string= '',char= '', start= True):
                #      count = 0 
                #      if not start:
                #         string = string[::-1]

                #      for k in string:
                #          if k is char:
                #              count += 1
                #          else:
                #              break
                #      return count

                # print(count_char(seq, '-'))
                # reverse_seq = seq[::-1]
                # print(count_char(reverse_seq, '-', start=False))


                # for line in seq:
                #       my_char = '-'
                #       count = seq.count("-", 10, 24)
                #       print(accession_name,count)
            
            # def count_char(seq):

            #     count_start = 0
            #     for char in seq:
            #         if char == '-':
            #             count_start += 1
            #         else:
            #             break
            #         return count_start
                    
            #     count_end = 0
            #     reverse_seq = seq[::-1]
            #     for char in reverse_seq:
            #         if char == '-':
            #             count_end += 1
            #         else:
            #             break
            #         return count_end

            #     print(count_char(seq, '-'))
            #     print(count_char(reverse_seq, '-', start=False))

                    


               


# print(type(pfam)) # class 'str'

# fastaseq = open("seq.txt", "w")

# ## pulling out the sequence

# # I need to do two things
# # 1.) when loop detects "gi", print out the title
# # 2.) when the loop detects "-, A, C, G or T", print until the loop detects ""

# for line in pfam:
#     line = line.strip('\n')
#     if line.starts with ("gi"):
#         title = line.rstrip()
#         seq = pfam.readline()
#         seq = seq.rstrip()
#         fastaseq.write(title+"/n"+seq+"/n")
#         print("seq.txt")

# for line in pfam:
#     line = line.strip('\n') # creates new line
#     if line.startswith("gi"):
#        title = line.strip()
#        print(title)
#        seq_start = False
#     else:
#         seq = line.strip().upper()
#         if 0 not in [c in 'ATCG' for c in seq]:
#             print(seq)

# for line in pfam 
#     line = line.strip('\n')
#     print(line)


# def print_accession_names(pfam):
#     for line in pfam
#         if line.startswith('gi'):
#             title = line.strip()
#             print(title)


# def print_accession_names(pfam):
#     for line in pfam:
#         if line.startswith('gi'):
#             print(line)


# print(type(pfam)) # class 'str'








