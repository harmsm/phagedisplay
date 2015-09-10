#!/bin/bash

echo "Testing fastq import"
../run_pipeline.py from-fastq-input -f *.fastq -r rounds.txt -k key-file.txt

echo "Testing pickle import"
../run_pipeline.py from-pickle-input -p test.pickle

echo "Test basic simulation (will take ~10 min)"
../run_simulation.py test-simulation -l 8

echo "Testing simulation import (illumina reads)"
../run_pipeline.py from-sim-illumina-input -s test-simulation

echo "Testing simulation import (all samples)"
../run_pipeline.py from-sim-all-input -s test-simulation -a


