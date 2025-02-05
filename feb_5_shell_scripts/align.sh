 cat zikv-42.top10.alipid.perseq | awk '{ print $1 }' > zikv-42.top10.list
 $VADREASELDIR/esl-alimanip --seq-k zikv-42.top10.list va-zikv-42/va-zikv-42.vadr.NC_012532.align.stk > zikv-42.top10.stk
