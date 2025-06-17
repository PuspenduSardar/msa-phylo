#!/bin/bash
INPUT="input/sequences.fasta"
OUTPUT="output/aligned.fasta"

echo "Running MAFFT for multiple sequence alignment..."
mafft --auto --thread $THREADS "$INPUT" > "$OUTPUT"
