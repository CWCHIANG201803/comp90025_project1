#!/bin/bash

#SBATCH --partition=physical
#SBATCH --constraint=physg5
#SBATCH --time=00:05:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G
#SBATCH --job-name=chaowei

module load gcc
module load cmake

cat ./data/mseq.dat | ./build/project1_app