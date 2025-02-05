perl $VADRSCRIPTSDIR/miniscripts/count-ambigs.pl zikv-49.fa | awk '{ printf("%s %s\n", $1, $2); }' | grep " 0" | wc -l 
perl $VADRSCRIPTSDIR/miniscripts/count-ambigs.pl zikv-49.fa | awk '{ printf("%s %s\n", $1, $2); }' | grep " 0" > 42_fail.list
$VADREASELDIR/esl-sfetch -f zikv.r500.fa 42_fail.list > zikv-42.fa
