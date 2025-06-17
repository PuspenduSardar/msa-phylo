# MSA + Phylogeny Pipeline

A simple modular Bash pipeline to run multiple sequence alignment, trim it, and infer a phylogenetic tree using IQ-TREE 2.

## 🛠 Requirements

### ✅ Recommended: Conda

```bash
conda env create -f environment.yml
conda activate msa-phylo
```

This will install:
- MAFFT (multiple sequence alignment)
- TrimAl (automated trimming)
- IQ-TREE 2 (phylogenetic inference)

### Option 2: Manual Install (not recommended)

```bash
sudo apt install mafft
sudo apt install trimal
conda install -c bioconda iqtree
```

## 📁 Structure

- `input/sequences.fasta`: your input sequences
- `output/`: all results will be saved here

## ▶️ Run the Pipeline

```bash
cd msa-phylo-pipeline/
chmod +x *.sh
./run_pipeline.sh
```

## 🔧 Configuration

You can change threads or memory by editing `run_pipeline.sh`:

```bash
THREADS=86
MEMORY=200G
```

## 🧪 Output Files

- `output/aligned.fasta`: MAFFT alignment
- `output/aligned_trimmed.fasta`: TrimAl-trimmed and reformatted alignment
- `output/tree.treefile`: Final phylogenetic tree from IQ-TREE

## ❗ Notes

- IQ-TREE will detect identical sequences and remove them by default (see `.iqtree` log).
- To retain duplicates, add `--keep-ident` to `tree.sh`.

## 📜 License

MIT
