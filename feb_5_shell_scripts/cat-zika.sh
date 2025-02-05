# concatenate .minfo, .cm .fa and .hmm files:
 #cat NC_035889/*.vadr.minfo > zikv-models1/zikv.minfo
 #cat NC_035889/*.vadr.cm > zikv-models1/zikv.cm
 #cat NC_035889/*.vadr.fa > zikv-models1/zikv.fa
 #cat NC_035889/*.vadr.protein.hmm > zikv-models1/zikv.hmm
 cat NC_012532/*.vadr.minfo > zikv-models1/zikv.minfo
 cat NC_012532/*.vadr.cm > zikv-models1/zikv.cm
 cat NC_012532/*.vadr.fa > zikv-models1/zikv.fa
 cat NC_012532/*.vadr.protein.hmm > zikv-models1/zikv.hmm

# copy the blastdb files:
 cp NC_035889/*.vadr.protein.fa* zikv-models1/
 cp NC_012532/*.vadr.protein.fa* zikv-models1/

# prepare the library files:
 $VADREASELDIR/esl-sfetch --index zikv-models1/zikv.fa
 $VADRINFERNALDIR/cmpress zikv-models1/zikv.cm
 $VADRHMMERDIR/hmmpress zikv-models1/zikv.hmm
 $VADRBLASTDIR/makeblastdb -dbtype nucl -in zikv-models1/zikv.fa
