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

#for a in zikv-central-america-ZB.2.1; do

for a in zikv-caribbean-ZB.2.2; do

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

qsub -N $a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e cm.$a.err -l m_mem_free=32G,h_rt=2880000,mem_free=32G,h_vmem=64G -pe multicore 4 -R y -m n "v-annotate.pl --out_stk -f -r --cpu 4 --split --mdir zikv-models --mkey zikv ZB.2.2_carribean.fa va-$a"

done

