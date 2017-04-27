# Directory containing the preprocessed data.
DATA_DIR="${HOME}/gobi4/skipthoughts/small_wiki"

# Directory to save the model.
MODEL_DIR="~/gobi4/skipthoughts/model"

# Build the model.
bazel build -c opt skip_thoughts/...

# Run the training script.
bazel-bin/skip_thoughts/train \
	  --input_file_pattern="${DATA_DIR}/train-?????-of-00100" \
	  --train_dir="${MODEL_DIR}/train"
