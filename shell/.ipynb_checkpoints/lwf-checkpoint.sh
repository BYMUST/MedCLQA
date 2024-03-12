LOG_NAME=4card_seq_LWF
OUT_DIR=/root/CTP/logger/${LOG_NAME}

cd ../train/
python train_LWF.py \
--config ../configs/exp/free.yaml \
--base_config ../configs/base_seqF.yaml \
--output_dir ${OUT_DIR} \
2>&1 | tee ../logger/${LOG_NAME}.log


