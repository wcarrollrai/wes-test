#!/bin/bash

echo Get starting data...

echo Process

python3 /transformers/examples/pytorch/text-classification/run_glue.py \
	--model_name_or_path google-bert/bert-base-cased --task_name qnli \
	--do_train --do_eval --max_seq_length 128 --per_device_train_batch_size 32 \
	--learning_rate 2e-5 --num_train_epochs 3 --output_dir /work/test-text-classification/qnli/

echo Move output to cloud bucket...
