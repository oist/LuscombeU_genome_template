# ORGANISM NAME assembly
Template repository for new genomes

## Description
XXX diploid chromosomal genome assembled using XXX. The contigs produced by XXX are phased sequences from a single haplotype. The parental origin of the contigs (paternal, maternal) is not known

## Files
- pairwise_alignment:
	- pairwise alignment to reference (REFERENCE GENOME)
	- pairwise alignment of primary to alternative
- usa_files: USA files for each chromosome
- contigs: contains all contigs used in the scaffolding
- busco: busco genome mode result 

## About the assemblies
- Assemblies created from contigs are written in `.usa` files (http://emboss.open-bio.org/html/use/ch06s06.html)
- Priority is given to the following (for primary):
	- contiguity
	- telomere presence
	- size
- https://github.com/johannesnicolaus/find_telomeres was used to find telomeres
- https://nf-co.re/pairgenomealign was used for pairwise genome alignment

## Primary assembly details

### Centromeres
Centromeres were not assembled and are represented by an arbitrary stretch of 1000 Ns in the chromosomal scaffolds.

### Gaps
Gaps are represented as 100N.

### XSR

### YSR

### chr1

- long: contig 1, contig 2 
- short: contig 1, contig 2

### chr2

### PAR

### chrMT


## Alternative assembly

### chr1_alt

### chr2_alt

### PAR_alt

