#!/bin/bash
INPUT="output/aligned.fasta"
TEMP_OUTPUT="output/aligned_trimmed_raw.fasta"
FINAL_OUTPUT="output/aligned_trimmed.fasta"

echo "Running TrimAl for alignment trimming..."
trimal -automated1 -in "$INPUT" -out "$TEMP_OUTPUT"

echo "Reformatting TrimAl output to single-line FASTA..."
awk '/^>/ {if (seq) print seq; print; seq=""; next} {seq=seq""$0} END {print seq}' "$TEMP_OUTPUT" > "$FINAL_OUTPUT"

# Optionally clean up the intermediate file
rm "$TEMP_OUTPUT"
