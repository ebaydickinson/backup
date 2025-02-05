#cat NC_038235/*.vadr.minfo > rsv-models1/rsv.minfo
#cat NC_038235/*.vadr.cm > rsv-models1/rsv.cm
#cat NC_038235/*.vadr.fa > rsv-models1/rsv.fa
#cat NC_038235/*.vadr.protein.hmm > rsv-models1/rsv.hmm
#cat NC_001781/*.vadr.minfo >> rsv-models1/rsv.minfo
#cat NC_001781/*.vadr.cm >> rsv-models1/rsv.cm
#cat NC_001781/*.vadr.fa >> rsv-models1/rsv.fa
#cat NC_001781/*.vadr.protein.hmm >> rsv-models1/rsv.hmm

cat NC_035889/*.vadr.minfo > zikv-models/zikv.minfo
cat NC_035889/*.vadr.cm > zikv-models/zikv.cm
cat NC_035889/*.vadr.fa > zikv-models/zikv.fa
cat NC_035889/*.vadr.protein.hmm > zikv-models/zikv.hmm
cat KY989511/*.vadr.minfo >> zikv-models/zikv.minfo
cat KY989511/*.vadr.cm >> zikv-models/zikv.cm
cat KY989511/*.vadr.fa >> zikv-models/zikv.fa
cat KY989511/*.vadr.protein.hmm >> zikv-models/zikv.hmm

# copy the blastdb files:
cp NC_035889/*.vadr.protein.fa* zikv-models/
cp KY989511/*.vadr.protein.fa* zikv-models/

# prepare the library files:
 # $VADREASELDIR/esl-sfetch --index zikv-models/zikv.fa
 # $VADRINFERNALDIR/cmpress zikv-models/zikv.cm
 # $VADRHMMERDIR/hmmpress zikv-models/zikv.hmm
 # $VADRBLASTDIR/makeblastdb -dbtype nucl -in zikv-models/zikv.fa
