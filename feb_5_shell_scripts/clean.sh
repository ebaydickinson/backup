#awk '/^>/ {if (seq && name ~ /UNVERIFIED|patent/) print ">" name "\n" seq; name = substr($0, 2); seq = ""} !/^>/ {seq = seq $0} END {if (seq && name ~ /UNVERIFIED|patent/) print ">" name "\n" seq}' example.fa > clean.fa

for a in short; do

# used to remove UNVERIFIED and Patent from the name
awk -vRS=">" -vORS="" -vFS="\n" -vOFS="\n" '
    NR>1 && $1!~/UNVERIFIED|Patent/ {print ">"$0}
  ' zikv-short.fa > $a.fa
  
done
