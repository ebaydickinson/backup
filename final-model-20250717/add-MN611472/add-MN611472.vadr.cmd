/net/intdev/oblast01/infernal/notebook/24_0626_vadr_1p6p4_bugfix_release/test-install2/infernal/binaries/esl-translate  -M -l 3423 --watson add-MN611472/add-MN611472.vadr.cds.fa > add-MN611472/add-MN611472.vadr.prot.fa.tmp
cat add-MN611472/add-MN611472.vadr.prot.fa >> ./MG807646.vadr.protein.fa
/net/intdev/oblast01/infernal/notebook/24_0626_vadr_1p6p4_bugfix_release/test-install2/ncbi-blast/bin/makeblastdb -in ./MG807646.vadr.protein.fa -dbtype prot > /dev/null
# Fri Jul 18 10:13:01 EDT 2025
# Linux cbbdev12 4.18.0-553.54.1.el8_10.x86_64 #1 SMP Tue May 27 22:49:52 EDT 2025 x86_64 x86_64 x86_64 GNU/Linux
[ok]
