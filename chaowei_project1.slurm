#!/bin/bash

#SBATCH --partition=physical
#SBATCH --constraint=physg5
#SBATCH --time=00:15:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G
#SBATCH --job-name=chaowei

module load gcc
module load cmake
for i in {1..5};do cat ./data/mseq-big13-example.dat | ./build/project1_app 1000 1000; done
