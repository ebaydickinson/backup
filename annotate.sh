#qsub -N cm -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl -f --cpu 4 --split --mdir zikv-models1 --mkey zikv zikv.r500.fa va-zikv.r500 > va-zikv.r500.out"

#added --keep and --out_fsstk option to find Possible_Frameshift_LowConfidence

#qsub -N cm -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --keep --out_stk -f --cpu 4 --split --mdir zikv-models1 --mkey zikv zikv-african.fa va-zikv-african > va-zikv-african.out"

# for looping 

#for a in zikv-frameshift-asian; do

#for a in zikv-clean-comp95; do

#for a in zikv-frameshift-comp95; do

#for a in zikv-short-cl; do

#for a in zikv-short-cl-fail; do

#1for a in zikv-all-cl; do

#2for a in zikv-unverified-cl; do

#3for a in zikv-ZA-african; do

#4for a in zikv-ZB.1-asian; do

#5for a in zikv-ZB.1.0-southeast-asian; do

#6for a in zikv-south-america-ZB.2.0; do

#7for a in zikv-central-america-ZB.2.1; do

#8for a in zikv-caribbean-ZB.2.2; do

#9for a in zikv-genotype; do

#10for a in zikv-clade; do

#11for a in zikv-MN611472; do

#12for a in zikv-s-clade; do

#13for a in zikv-franken-MN611472-clade; do 

#14for a in zikv-new-MN611472-clade; do 

#15for a in zikv-genotype2; do 

#16for a in zikv-s-genotype; do 

#17/21 for a in zikv-gen-asia-combo3; do 

#for a in zikv-gen-asia-combo3; do 

#for a in zikv-gen-asia-combo4; do 

#for a in zikv-gen-asia-combo3-2; do

#22for a in zikv-gen-asia-combo4; do

#23for a in zikv-final; do

#24for a in zikv-all-june10; do

#25for a in zikv-MG807646-test; do

#26for a in zikv-all2-june10; do

#27for a in zikv-all3-june10; do

#28for a in zikv-all-clean-june10; do

#29for a in zikv-models3-760; do

#30for a in zikv-20250717-june10; do

for a in zikv-june10-frameshift; do
    
#qsub -N cm -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --out_stk -f --cpu 4 --split --mdir zikv-models1 --mkey zikv zikv-42.fa va-zikv-42 > va-zikv-42.out"

#qsub -N cm -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --out_stk -f --cpu 4 --split --mdir zikv-models3 --mkey zikv zikv-52.fa va-zikv-african2"

#qsub -N cm -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --out_stk -f -r --cpu 4 --split --mdir zikv-models1 --mkey zikv asian.fa va-r-zikv-asian"

#qsub -N cm -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --out_stk -f -r --cpu 4 --split --mdir zikv-models1 --mkey zikv r-zikv-fail.fa va-r-zikv-fail-asian"   

#qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --out_stk -f -r --cpu 4 --split --mdir zikv-models1 --mkey zikv $a.fa va-$a"

#qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --out_stk -f -r --cpu 4 --split --mdir zikv-models1 --mkey zikv $a.fa va-$a"

#qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --keep -f -r --cpu 4 --split --mdir zikv-models1 --mkey zikv $a.fa va-$a"

#qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --keep -f -r --cpu 4 --split --mdir zikv-models --mkey zikv zikv-clean-comp95.fa va-$a"

#qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --out_stk -f -r --cpu 4 --split --mdir zikv-models --mkey zikv $a.fa va-$a"

#qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --keep -f -r --cpu 4 --split --mdir zikv-models --mkey zikv $a.fa va-$a"

#1qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --keep -f -r --cpu 4 --split --mdir zikv-models --mkey zikv $a.fa va-$a"

#2qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --keep -f -r --cpu 4 --split --mdir zikv-models --mkey zikv $a.fa va-$a"

#3qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --out_stk -f -r --cpu 4 --split --mdir zikv-models --mkey zikv ZA_african_id.fa va-$a"

#qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --out_stk -f -r --cpu 4 --split --mdir zikv-models --mkey zikv ZB.1_asian_id.fa va-$a"

#qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --out_stk -f -r --cpu 4 --split --mdir zikv-models --mkey zikv ZB.1.0_southeast_asia.fa va-$a"

#qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --out_stk -f -r --cpu 4 --split --mdir zikv-models --mkey zikv ZB.2.0_south_america.fa va-$a"

# qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --out_stk -f -r --cpu 4 --split --mdir zikv-models --mkey zikv ZB.2.2_carribean.fa va-$a"

# qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --out_stk -f -r --cpu 4 --split --mdir zikv-models --mkey zikv ZB.2.2_carribean.fa va-$a"

#qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --keep -f -r --cpu 4 --split --mdir zikv-genotype-models --mkey zikv accession-760.fa va-$a"

#10 qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --keep -f -r --cpu 4 --split --mdir zikv-clade-models --mkey zikv accession-760.fa va-$a"

#11qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --keep --mlist MN611472.txt -f -r --cpu 4 --split --mdir zikv-clade-models --mkey zikv ZB.1.1_southern_asia.fa va-$a"

#12 qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --keep -s -f -r --cpu 4 --split --mdir zikv-clade-models --mkey zikv accession-760.fa va-$a"

#13qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --keep -f -r --cpu 4 --split --mdir zikv-franken-clade-models --mkey zikv accession-760.fa va-$a"

#14qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --keep -f -r --cpu 4 --split --mdir zikv-franken-clade-models --mkey zikv accession-760.fa va-$a"

#15qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --keep -f -r --cpu 4 --split --mdir zikv-genotype-models2 --mkey zikv accession-760.fa va-$a"

#16qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --keep -s -f -r --cpu 4 --split --mdir zikv-genotype-models2 --mkey zikv accession-760.fa va-$a"

#17qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --keep -s -f -r --cpu 4 --split --mdir zikv-asia-combo3-models --mkey zikv accession-760.fa va-$a"

#Try rerunning  the annotations without using -s , for these tests of a model built from 3 sequences we can't use -s because that invokes blast which is always based on a single sequence.

#qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --keep -f -r --cpu 4 --split --mdir zikv-asia-combo3-models --mkey zikv accession-760.fa va-$a"

#qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --keep -f -r --cpu 4 --split --mdir zikv-asia-combo4-models --mkey zikv accession-760.fa va-$a"

#qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --keep -f -r --cpu 4 --split --mdir zikv-asia-combo3-models2 --mkey zikv accession-760.fa va-$a"

#21qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --out_stk -f -r --cpu 4 --split --mdir zikv-asia-combo3-models2 --mkey zikv accession-760.fa va-$a"

#22qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --out_stk -f -r --cpu 4 --split --mdir zikv-asia-combo4-models --mkey zikv accession-760.fa va-$a"

#23qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --out_stk -f -r --cpu 4 --split --mdir zikv-final-models --mkey zikv accession-760.fa va-$a"

#24qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --out_stk -f -r --cpu 4 --split --mdir zikv-final-models --mkey zikv june-10-zikv-comp-cl.fa va-$a"

#25qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --mlist my.mlist --keep -f -r --cpu 4 --split --mdir zikv-final-models --mkey zikv MG807646.fa va-$a"

#26qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --out_stk -f -r --cpu 4 --split --mdir zikv-final-models2 --mkey zikv june-10-zikv-comp-cl.fa va-$a"

#26qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --keep -f -r --cpu 4 --split --mdir zikv-final-models2 --mkey zikv june-10-zikv-comp-cl.fa va-$a"

#27qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --keep -f -r --cpu 4 --split --mdir zikv-final-models3 --mkey zikv june-10-zikv-comp-cl.fa va-$a"

#28qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --keep -f -r --cpu 4 --split --mdir zikv-final-models3 --mkey zikv june-10-clean2.fa va-$a"

#29qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --out_stk -f -r --cpu 4 --split --mdir zikv-final-models3 --mkey zikv accession-760.fa va-$a"

#30qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --out_stk -f -r --cpu 4 --split --mdir final-model-20250717 --mkey zikv june-10-zikv-comp-cl.fa va-$a"

#30qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --out_stk -f -r --cpu 4 --split --mdir final-model-20250717 --mkey zikv june-10-clean2.fa va-$a"

qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --out_stk -f -r -\
-cpu 4 --split --mdir final-model-20250717 --mkey zikv june-10-frameshift.fa va-$a"

done
 
