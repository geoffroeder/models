#!/bin/bash
source activate tensorflow

# Directory containing the preprocessed data.
DATA_DIR="/ais/gobi5/roeder/wikis_en"

# Directory to save the model.
MODEL_DIR="/ais/gobi5/roeder/wikis_en/model"

# Build the model.
bazel build -c opt skip_thoughts/...

# Run the training script.
bazel-bin/skip_thoughts/train \
	  --input_file_pattern="${DATA_DIR}/train-?????-of-00100" \
	  --train_dir="${MODEL_DIR}/train"
