#!/bin/bash

#SBATCH --job-name=serial_matrix_multiplication    # Job name
#SBATCH --output=serial_matrix_multiplication.out         # Output file for stdout
#SBATCH --error=serial_matrix_multiplication.err          # Output file for stderr
#SBATCH --ntasks=1                                 # Number of tasks (1 serial task)
#SBATCH --cpus-per-task=1                          # Only one CPU core (serial execution)
#SBATCH --time=01:00:00                            # Time limit hrs:min:sec
#SBATCH --mem=16G                                   # Memory limit (adjust if necessary)

module load java

# Compile the Java program
javac SerialMatrixMultiplication.java

# Run the Java program
java SerialMatrixMultiplication
