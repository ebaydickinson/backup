mkdir KY989511
cp KY989511.sscons.stk KY989511/KY989511.vadr.stk
/home/dickinsoneb/vadr_files/infernal/binaries/esl-reformat --informat fasta -d -u fasta KY989511/KY989511.vadr.fa > KY989511/KY989511.vadr.fa.tmp
/home/dickinsoneb/vadr_files/ncbi-blast/bin/makeblastdb -in KY989511/KY989511.vadr.fa -dbtype nucl > /dev/null
rm KY989511/KY989511.vadr.fa.tmp
rm KY989511/KY989511.vadr.fa.tmp.ssi
/home/dickinsoneb/vadr_files/infernal/binaries/esl-sfetch --index KY989511/KY989511.vadr.fa > /dev/null
/home/dickinsoneb/vadr_files/infernal/binaries/esl-translate  -M -l 3 --watson KY989511/KY989511.vadr.cds.fa > KY989511/KY989511.vadr.cds.esl-translate.1.fa
rm KY989511/KY989511.vadr.cds.esl-translate.1.fa
rm KY989511/KY989511.vadr.cds.esl-translate.2.fa
rm KY989511/KY989511.vadr.cds.esl-translate.2.fa.ssi
/home/dickinsoneb/vadr_files/ncbi-blast/bin/makeblastdb -in KY989511/KY989511.vadr.protein.fa -dbtype prot > /dev/null
/home/dickinsoneb/vadr_files/infernal/binaries/esl-sfetch KY989511/KY989511.vadr.protein.fa KY989511.1/107..10378:+ | /home/dickinsoneb/vadr_files/infernal/binaries/hmmbuild -n KY989511/107..10378:+ --informat afa KY989511/KY989511.vadr.1.hmm - > KY989511/KY989511.vadr.1.hmmbuild
cat KY989511/KY989511.vadr.1.hmm > KY989511/KY989511.vadr.protein.hmm
rm  KY989511/KY989511.vadr.1.hmm
cat KY989511/KY989511.vadr.1.hmmbuild > KY989511/KY989511.vadr.protein.hmmbuild
rm  KY989511/KY989511.vadr.1.hmmbuild
/home/dickinsoneb/vadr_files/infernal/binaries/hmmpress KY989511/KY989511.vadr.protein.hmm > KY989511/KY989511.vadr.hmmpress
/home/dickinsoneb/vadr_files/infernal/binaries/cmbuild -n KY989511 --verbose  --noh3pri KY989511/KY989511.vadr.cm KY989511/KY989511.vadr.stk > KY989511/KY989511.vadr.cmbuild
/home/dickinsoneb/vadr_files/infernal/binaries/cmpress KY989511/KY989511.vadr.cm > KY989511/KY989511.vadr.cmpress
# Mon Nov 25 15:37:01 EST 2024
# Linux cbbdev12 4.18.0-553.22.1.el8_10.x86_64 #1 SMP Tue Sep 24 05:16:59 EDT 2024 x86_64 x86_64 x86_64 GNU/Linux
[ok]
