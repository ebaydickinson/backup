mkdir NC_035889
cp NC_035889.sscons.stk NC_035889/NC_035889.vadr.stk
/home/dickinsoneb/vadr_files/infernal/binaries/esl-reformat --informat fasta -d -u fasta NC_035889/NC_035889.vadr.fa > NC_035889/NC_035889.vadr.fa.tmp
/home/dickinsoneb/vadr_files/ncbi-blast/bin/makeblastdb -in NC_035889/NC_035889.vadr.fa -dbtype nucl > /dev/null
rm NC_035889/NC_035889.vadr.fa.tmp
rm NC_035889/NC_035889.vadr.fa.tmp.ssi
/home/dickinsoneb/vadr_files/infernal/binaries/esl-sfetch --index NC_035889/NC_035889.vadr.fa > /dev/null
/home/dickinsoneb/vadr_files/infernal/binaries/esl-translate  -M -l 3 --watson NC_035889/NC_035889.vadr.cds.fa > NC_035889/NC_035889.vadr.cds.esl-translate.1.fa
rm NC_035889/NC_035889.vadr.cds.esl-translate.1.fa
rm NC_035889/NC_035889.vadr.cds.esl-translate.2.fa
rm NC_035889/NC_035889.vadr.cds.esl-translate.2.fa.ssi
/home/dickinsoneb/vadr_files/ncbi-blast/bin/makeblastdb -in NC_035889/NC_035889.vadr.protein.fa -dbtype prot > /dev/null
/home/dickinsoneb/vadr_files/infernal/binaries/esl-sfetch NC_035889/NC_035889.vadr.protein.fa NC_035889.1/108..10379:+ | /home/dickinsoneb/vadr_files/infernal/binaries/hmmbuild -n NC_035889/108..10379:+ --informat afa NC_035889/NC_035889.vadr.1.hmm - > NC_035889/NC_035889.vadr.1.hmmbuild
cat NC_035889/NC_035889.vadr.1.hmm > NC_035889/NC_035889.vadr.protein.hmm
rm  NC_035889/NC_035889.vadr.1.hmm
cat NC_035889/NC_035889.vadr.1.hmmbuild > NC_035889/NC_035889.vadr.protein.hmmbuild
rm  NC_035889/NC_035889.vadr.1.hmmbuild
/home/dickinsoneb/vadr_files/infernal/binaries/hmmpress NC_035889/NC_035889.vadr.protein.hmm > NC_035889/NC_035889.vadr.hmmpress
/home/dickinsoneb/vadr_files/infernal/binaries/cmbuild -n NC_035889 --verbose  --noh3pri NC_035889/NC_035889.vadr.cm NC_035889/NC_035889.vadr.stk > NC_035889/NC_035889.vadr.cmbuild
/home/dickinsoneb/vadr_files/infernal/binaries/cmpress NC_035889/NC_035889.vadr.cm > NC_035889/NC_035889.vadr.cmpress
# Thu Nov 14 14:00:54 EST 2024
# Linux cbbdev12 4.18.0-553.22.1.el8_10.x86_64 #1 SMP Tue Sep 24 05:16:59 EDT 2024 x86_64 x86_64 x86_64 GNU/Linux
[ok]
