#cat NC_038235/*.vadr.minfo > rsv-models1/rsv.minfo
#cat NC_038235/*.vadr.cm > rsv-models1/rsv.cm
#cat NC_038235/*.vadr.fa > rsv-models1/rsv.fa
#cat NC_038235/*.vadr.protein.hmm > rsv-models1/rsv.hmm
#cat NC_001781/*.vadr.minfo >> rsv-models1/rsv.minfo
#cat NC_001781/*.vadr.cm >> rsv-models1/rsv.cm
#cat NC_001781/*.vadr.fa >> rsv-models1/rsv.fa
#cat NC_001781/*.vadr.protein.hmm >> rsv-models1/rsv.hmm

# cat NC_035889/*.vadr.minfo > zikv-models/zikv.minfo
# cat NC_035889/*.vadr.cm > zikv-models/zikv.cm
# cat NC_035889/*.vadr.fa > zikv-models/zikv.fa
# cat NC_035889/*.vadr.protein.hmm > zikv-models/zikv.hmm
# cat KY989511/*.vadr.minfo >> zikv-models/zikv.minfo
# cat KY989511/*.vadr.cm >> zikv-models/zikv.cm
# cat KY989511/*.vadr.fa >> zikv-models/zikv.fa
# cat KY989511/*.vadr.protein.hmm >> zikv-models/zikv.hmm

# cat AY632535/*.vadr.minfo > zikv-genotype-models/zikv.minfo
# cat AY632535/*.vadr.cm > zikv-genotype-models/zikv.cm
# cat AY632535/*.vadr.fa > zikv-genotype-models/zikv.fa
# cat AY632535/*.vadr.protein.hmm > zikv-genotype-models/zikv.hmm
# cat MN611472/*.vadr.minfo >> zikv-genotype-models/zikv.minfo
# cat MN611472/*.vadr.cm >> zikv-genotype-models/zikv.cm
# cat MN611472/*.vadr.fa >> zikv-genotype-models/zikv.fa
# cat MN611472/*.vadr.protein.hmm >> zikv-genotype-modelszikv.hmm
# cat KU509998/*.vadr.minfo >> zikv-genotype-models/zikv.minfo
# cat KU509998/*.vadr.cm >> zikv-genotype-models/zikv.cm
# cat KU509998/*.vadr.fa >> zikv-genotype-models/zikv.fa
# cat KU509998/*.vadr.protein.hmm >> zikv-genotype-models/zikv.hmm

# # # copy the blastdb files:
# cp AY632535/*.vadr.protein.fa* zikv-genotype-models/
# cp MN611472/*.vadr.protein.fa* zikv-genotype-models/
# cp KU509998/*.vadr.protein.fa* zikv-genotype-models/

cat AY632535/*.vadr.minfo > zikv-genotype-models2/zikv.minfo
cat AY632535/*.vadr.cm > zikv-genotype-models2/zikv.cm
cat AY632535/*.vadr.fa > zikv-genotype-models2/zikv.fa
cat AY632535/*.vadr.protein.hmm > zikv-genotype-models2/zikv.hmm
cat MG807646/*.vadr.minfo >> zikv-genotype-models2/zikv.minfo
cat MG807646/*.vadr.cm >> zikv-genotype-models2/zikv.cm
cat MG807646/*.vadr.fa >> zikv-genotype-models2/zikv.fa
cat MG807646/*.vadr.protein.hmm >> zikv-genotype-models2/zikv.hmm
cat KU509998/*.vadr.minfo >> zikv-genotype-models2/zikv.minfo
cat KU509998/*.vadr.cm >> zikv-genotype-models2/zikv.cm
cat KU509998/*.vadr.fa >> zikv-genotype-models2/zikv.fa
cat KU509998/*.vadr.protein.hmm >> zikv-genotype-models2/zikv.hmm

# # copy the blastdb files:
cp AY632535/*.vadr.protein.fa* zikv-genotype-models2/
cp MG807646/*.vadr.protein.fa* zikv-genotype-models2/
cp KU509998/*.vadr.protein.fa* zikv-genotype-models2/


# # copy the blastdb files:
# cp NC_035889/*.vadr.protein.fa* zikv-models/
# cp KY989511/*.vadr.protein.fa* zikv-models/

# prepare the library files:
 # $VADREASELDIR/esl-sfetch --index zikv-models/zikv.fa
 # $VADRINFERNALDIR/cmpress zikv-models/zikv.cm
 # $VADRHMMERDIR/hmmpress zikv-models/zikv.hmm
 # $VADRBLASTDIR/makeblastdb -dbtype nucl -in zikv-models/zikv.fa
