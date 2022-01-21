# `dse` Conda environment

This Conda environment contains most of the packages we use.

We recommend [`mamba`](https://github.com/mamba-org/mamba) because it is so much faster than Conda.

After installing Conda (we like [`miniconda3`](https://docs.conda.io/en/latest/miniconda.html)), install mamba:
```
conda install mamba -n base -c conda-forge
```

Clone the repo (our team stores most repos in our home directory for consistency):
```bash
git clone https://github.com/prometheusbio/dse.git
```

Create the environment:
```bash
mamba env create -f ~/dse/environment.yml
```

Note this is a convenience for quick-and-dirty local prototyping.
It is *not* the solution we use for reproducible data science across projects.
