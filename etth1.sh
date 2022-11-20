# add --individual for DLinear-I
if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/ETTh1_96" ]; then
    mkdir ./logs/ETTh1_96
fi

# # LSTM - ETTh1
# model_name=LSTM
# CUDA_VISIBLE_DEVICES=7 python -u run_longExp.py \
#   --is_training 1 \
#   --data ETTh1 \
#   --root_path ./datasets/ETT-data \
#   --data_path ETTh1.csv \
#   --model_id ETT_LSTM \
#   --model $model_name \
#   --features M \
#   --seq_len 96 \
#   --pred_len 96 \
#   --label_len 48 \
#   --des 'Exp' \
#   --loss mse \
#   --input_size 7 \
#   --hidden_size 128 \
#   --train_epochs 1 \
#   --itr 1 --batch_size 32 --learning_rate 0.001 >logs/ETTh1_96/$model_name'_'ETTh1.log

# # Linear
# model_name=Linear
# CUDA_VISIBLE_DEVICES=0 python -u run_longExp.py \
#   --is_training 1 \
#   --data ETTh1 \
#   --root_path ./datasets/ETT-data \
#   --data_path ETTh1.csv \
#   --model_id Linear \
#   --model $model_name \
#   --features M \
#   --seq_len 96 \
#   --pred_len 96 \
#   --label_len 48 \
#   --features 'M' \
#   --des 'Exp' \
#   --loss mse \
#   --train_epochs 10 \
#   --itr 1 --batch_size 32 --learning_rate 0.005 >logs/ETTh1_96/$model_name'_'ETTh1.log

# NLinear
model_name=NLinear
CUDA_VISIBLE_DEVICES=0 python -u run_longExp.py \
  --is_training 1 \
  --data ETTh1 \
  --root_path ./datasets/ETT-data \
  --data_path ETTh1.csv \
  --model_id NLinear \
  --model $model_name \
  --features M \
  --seq_len 336 \
  --pred_len 96 \
  --label_len 48 \
  --des 'Exp' \
  --loss mse\
  --train_epochs 10 \
  --itr 1 --batch_size 32 --learning_rate 0.005 >logs/ETTh1_96/$model_name'_'ETTh1.log

# # DLinear
# model_name=DLinear
# CUDA_VISIBLE_DEVICES=0 python -u run_longExp.py \
#   --is_training 1 \
#   --data ETTh1 \
#   --root_path ./datasets/ETT-data \
#   --data_path ETTh1.csv \
#   --model_id DLinear \
#   --model $model_name \
#   --features 'M' \
#   --seq_len 96 \
#   --pred_len 96 \
#   --label_len 48 \
#   --des 'Exp' \
#   --loss mse\
#   --train_epochs 10 \
#   --itr 1 --batch_size 32 --learning_rate 0.005 >logs/ETTh1_96/$model_name'_'ETTh1.log

# # Transformer
# model_name=Transformer
# CUDA_VISIBLE_DEVICES=7 python -u run_longExp.py \
#   --is_training 1 \
#   --data ETTh1 \
#   --root_path ./datasets/ETT-data \
#   --data_path ETTh1.csv \
#   --model_id Transformer \
#   --model $model_name \
#   --features M \
#   --seq_len 336 \
#   --pred_len 96 \
#   --label_len 48 \
#   --learning_rate 0.0001 \
#   --des 'Exp' \
#   --loss mse\
#   --train_epochs 50 \
#   --itr 1 --batch_size 32 >logs/ETTh1_96/$model_name'_'ETTh1.log

# # Informer
# model_name=Informer
# CUDA_VISIBLE_DEVICES=7 python -u run_longExp.py \
#   --is_training 1 \
#   --data ETTh1 \
#   --root_path ./datasets/ETT-data \
#   --data_path ETTh1.csv \
#   --model_id Informer \
#   --model $model_name \
#   --features M \
#   --seq_len 336 \
#   --pred_len 96 \
#   --label_len 48 \
#   --learning_rate 0.0001 \
#   --patience 50 \
#   --des 'Exp' \
#   --loss mse\
#   --train_epochs 50 \
#   --itr 1 --batch_size 32 >logs/ETTh1_96/$model_name'_'ETTh1_48.log

# # Autoformer
# model_name=Autoformer
# CUDA_VISIBLE_DEVICES=7 python -u run_longExp.py \
#   --is_training 1 \
#   --data ETTh1 \
#   --root_path ./datasets/ETT-data \
#   --data_path ETTh1.csv \
#   --model_id Autoformer \
#   --model $model_name \
#   --features M \
#   --seq_len 336 \
#   --pred_len 96 \
#   --label_len 48 \
#   --learning_rate 0.001 \
#   --patience 50 \
#   --des 'Exp' \
#   --loss mse\
#   --train_epochs 50 \
#   --itr 1 --batch_size 32 >logs/LongForecasting/$model_name'_'ETTh1_336_1e-4.log


# # SCINet
# model_name=SCINet
# CUDA_VISIBLE_DEVICES=7 python -u run_longExp.py \
#   --is_training 1 \
#   --data ETTh1 \
#   --root_path ./datasets/ETT-data \
#   --data_path ETTh1.csv \
#   --model_id SCINet \
#   --model $model_name \
#   --features M \
#   --seq_len 336 \
#   --pred_len 96 \
#   --label_len 48 \
#   --des 'Exp' \
#   --hidden_size 1 \
#   --loss mse \
#   --dropout 0.5 \
#   --num_stacks 1 \
#   --num_levels 3 \
#   --patience 50 \
#   --train_epochs 50 \
#   --itr 1 --batch_size 32 --learning_rate 0.001 >logs/ETTh1_96/$model_name'_'ETTh1'_'features.log

# # SCINet_decom
# model_name=SCINet_decom
# CUDA_VISIBLE_DEVICES=2 python -u run_longExp.py \
#   --is_training 1 \
#   --data ETTh1 \
#   --root_path ./datasets/ETT-data \
#   --data_path ETTh1.csv \
#   --model_id SCINet(Decom) \
#   --model $model_name \
#   --features M \
#   --seq_len 336 \
#   --pred_len 96 \
#   --label_len 48 \
#   --des 'Exp' \
#   --hidden_size 1 \
#   --loss mse \
#   --dropout 0.5 \
#   --num_stacks 1 \
#   --num_levels 3 \
#   --train_epochs 50 \
#   --itr 1 --batch_size 32 --learning_rate 0.0001 >logs/ETTh1_96/$model_name'_'ETTh1.log
