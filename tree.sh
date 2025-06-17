#!/bin/bash
INPUT="output/aligned_trimmed.fasta"
OUTPUT_DIR="output"

echo "Building phylogenetic tree with IQ-TREE..."

iqtree2 -s "$INPUT" \
  -m MFP \
  -T AUTO \
  -mem ${MEMORY:-160G} \
  -B 1000 \
  --alrt 1000 \
  --boot-trees \
  -pre "$OUTPUT_DIR/tree"
