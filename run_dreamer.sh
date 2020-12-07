#!/bin/bash

# Slurm sbatch options
#SBATCH -o dreamer.log-%j

#SBATCH --exclusive
#SBATCH --gres=gpu:volta:2

# Initialize module command
# source /etc/profile
source ~/.profile

#Load Anaconda
module load anaconda/2020a

#Call script as from command line
python3 dreamer.py --logdir ./logdir/football --task football_academy
