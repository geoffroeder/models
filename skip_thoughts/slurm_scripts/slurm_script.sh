#!/bin/bash

source activate tensorflow
bash /ais/gobi5/roeder/fastText/code/track_perplexity.sh &
bash train_scripts/train_all_langs.sh
