$VADREASELDIR/esl-sfetch --index rsv-models1/rsv.fa
$VADRINFERNALDIR/cmpress -F rsv-models1/rsv.cm
$VADRHMMERDIR/hmmpress rsv-models1/rsv.hmm
$VADRBLASTDIR/makeblastdb -dbtype nucl -in rsv-models1/rsv.fa
