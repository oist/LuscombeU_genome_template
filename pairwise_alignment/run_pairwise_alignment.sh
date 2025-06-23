#!/bin/sh
ml bioinfo-ugrp-modules Nextflow2

REF_GENOME="XXXX"
TEMP_DIR="XXXX"

nextflow run oist/LuscombeU_nfcore_pairgenomealign_fork -r milestone_2.1.0_beta \
  --input ./samplesheet.csv \
  -profile oist --m2m \
  --target $REF_GENOME -resume \
  --dotplot_options '--rot2=h --rot1=v --sort2=1 --strands2=0' \
  --outdir ./vs_reference \
  -w $TEMP_DIR


PRIMARY_ASSEMBLY="../assemblies/XXX_primary_assembly_v1.0.0.fa"
nextflow run oist/LuscombeU_nfcore_pairgenomealign_fork -r milestone_2.1.0_beta \
  --input ./samplesheet_alternative.csv \
  -profile oist --m2m \
  --target $PRIMARY_ASSEMBLY -resume \
  --dotplot_options '--rot2=h --rot1=v --sort2=1 --strands2=0' \
  --outdir ./primary_vs_alternate \
  -w $TEMP_DIR
