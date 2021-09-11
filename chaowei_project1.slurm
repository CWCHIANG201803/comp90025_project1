#!/bin/bash

#SBATCH --partition=physical
#SBATCH --constraint=physg5
#SBATCH --time=03:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G
#SBATCH --job-name=chaowei

module load gcc
cd build
g++ -fopenmp -O3 -o project1_app ../src/kseqalign.cpp
cd ..
for idx in {1..5}
do
    cat ./data/mseq-big13-example.dat | ./build/project1_app
done