#!/bin/bash

#SBATCH --partition=physical
#SBATCH --constraint=physg5
#SBATCH --time=00:50:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=32G
#SBATCH --job-name=chaowei


mkdir build
module load gcc
cd build
g++ -fopenmp -lnuma -O3 -o project1_app ../src/kseqalign.cpp
cd ..
lscpu
cat ./data/mseq-big13-example.dat | ./build/project1_app 1000 1000
