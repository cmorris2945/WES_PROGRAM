#!/bin/bash

. ./wes_inputfiles.txt

echo
echo "6. Tumor vcf Comparison Report:"
echo "----------------------------"

vcftoolz compare $dnanexus_tvcf $cromwell_tvcf
rm *.pdf

echo
echo "7. Germline vcf Comparison Report:"
echo "-------------------------------"

vcftoolz compare $dnanexus_gvcf $cromwell_gvcf
rm *.pdf

echo
echo "8. Dotg vcf Comparison Report:"
echo "-------------------------------"

vcftoolz compare $dnanexus_dotgvcf $cromwell_dotgvcf
rm *.pdf

echo
echo
echo "9. Tumor vcf count comparison Report:"
echo "----------------------------------"
echo "DNANEXUS                                                        CROMWELL"
echo "--------                                                        --------"

diff -y <(vcftoolz count $dnanexus_tvcf) <(vcftoolz count $cromwell_tvcf)
echo
echo "***Note: The '|' symbol shows the place of difference.***"  

echo
echo "10. Germline vcf count comparison Report:"
echo "-------------------------------------"
echo "DNANEXUS                                                        CROMWELL"
echo "--------                                                        --------"
diff -y <(vcftoolz count $dnanexus_gvcf) <(vcftoolz count $cromwell_gvcf)
echo
echo "***Note: The '|' symbol shows the place of difference.***"  

echo
echo "11. Dotg vcf count comparison Report:"
echo "-------------------------------------"
echo "DNANEXUS                                                        CROMWELL"
echo "--------                                                        --------"
diff -y <(vcftoolz count $dnanexus_dotgvcf) <(vcftoolz count $cromwell_dotgvcf)
echo
echo "***Note: The '|' symbol shows the place of difference.***"  
