export CUDA_VISIBLE_DEVICES=0,1,2,3
LOG_NAME=4card_seq_SI
OUT_DIR=/mnt2/save_1M_seq_finetune/${LOG_NAME}

cd ../train/
python train_SI.py \
--config ../configs/exp/free.yaml \
--base_config ../configs/base_seqF.yaml \
--output_dir ${OUT_DIR} \
--distributed False
2>&1 | tee ../logger/${LOG_NAME}.log
