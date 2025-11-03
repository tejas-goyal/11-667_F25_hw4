#!/bin/bash

# Create submission folder and subfolders
mkdir -p submission/configs

# Create placeholder files
touch submission/model.txt
touch submission/lm_inference.py

# Optional: remind the user to add the report
echo "Don't forget to add your report PDF to the submission folder!"
echo "submission/"
echo " ├── configs/"
echo " ├── model.txt"
echo " ├── lm_inference.py"
echo " └── report.pdf (to be added manually)"
