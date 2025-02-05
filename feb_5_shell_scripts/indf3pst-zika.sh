# pick a sequence with the indf3pst alert:
 grep indf3pst va-zikv.r500/va-zikv.r500.vadr.alt | grep attachment | grep NC_035889 | awk '{ print $2 }' | $VADREASELDIR/esl-selectn 1 - > ex5.list
 cat ex5.list
MH181932.1

# fetch the sequence
 $VADREASELDIR/esl-sfetch -f rsv.r500.fa ex5.list > ex5.fa

 # run v-annotate.pl on these sequences with the --keep option to save all output files
 v-annotate.pl --keep --mdir zikv-models1 --mkey zikv ex5.fa va-ex5
