# # add --individual for DLinear-I
# if [ ! -d "./mirae/logs" ]; then
#     mkdir ./mirae/logs
# fi

# if [ ! -d "./mirae/logs/LongForecasting" ]; then
#     mkdir ./mirae/logs/LongForecasting
# fi

# # LSTM
# model_name=LSTM
# CUDA_VISIBLE_DEVICES=1 python -u run_longExp.py \
#   --is_training 1 \
#   --x_data_path ../Data/x_H.npy \
#   --y_data_path ../Data/y_H.npy \
#   --model_id mirae_LSTM \
#   --model $model_name \
#   --data mirae \
#   --des 'Exp' \
#   --loss mse \
#   --input_size 1 \
#   --hidden_size 128 \
#   --pred_len 12 \
#   --train_epochs 10 \
#   --itr 1 --batch_size 128 --learning_rate 0.001 >logs/mirae/$model_name'_'mirae'_'final.log

# # Linear
# model_name=Linear
# CUDA_VISIBLE_DEVICES=1 python -u run_longExp.py \
#   --is_training 1 \
#   --x_data_path ../Data/x_H.npy \
#   --y_data_path ../Data/y_H.npy \
#   --model_id mirae_Linear \
#   --model $model_name \
#   --data mirae \
#   --des 'Exp' \
#   --loss mse \
#   --feature 'MS' \
#   --seq_len 72 \
#   --pred_len 12 \
#   --train_epochs 10 \
#   --itr 1 --batch_size 32 --learning_rate 0.005 >logs/mirae/$model_name'_'mirae'_'final.log

# # NLinear
# model_name=NLinear
# CUDA_VISIBLE_DEVICES=1 python -u run_longExp.py \
#   --is_training 1 \
#   --x_data_path ../Data/x_H.npy \
#   --y_data_path ../Data/y_H.npy \
#   --model_id mirae_Nlinear \
#   --model $model_name \
#   --data mirae \
#   --des 'Exp' \
#   --loss mse\
#   --feature 'MS' \
#   --seq_len 72 \
#   --pred_len 12 \
#   --train_epochs 10 \
#   --itr 1 --batch_size 32 --learning_rate 0.005 >logs/mirae/$model_name'_'mirae'_'final.log

# # DLinear
# model_name=DLinear
# CUDA_VISIBLE_DEVICES=1 python -u run_longExp.py \
#   --is_training 1 \
#   --x_data_path ../Data/x_H.npy \
#   --y_data_path ../Data/y_H.npy \
#   --model_id mirae_DLinear \
#   --model $model_name \
#   --data mirae \
#   --des 'Exp' \
#   --feature 'MS' \
#   --loss mse\
#   --seq_len 72 \
#   --pred_len 12 \
#   --train_epochs 10 \
#   --itr 1 --batch_size 32 --learning_rate 0.005 >logs/mirae/$model_name'_'mirae'_'final.log

# # Transformer
# model_name=Transformer
# CUDA_VISIBLE_DEVICES=0 python -u run_longExp.py \
#   --is_training 1 \
#   --x_data_path ../Data/x_H.npy \
#   --y_data_path ../Data/y_H.npy \
#   --model_id mirae_Transformer \
#   --model $model_name \
#   --data mirae \
#   --des 'Exp' \
#   --loss mse \
#   --feature MS \
#   --seq_len 72 \
#   --pred_len 12 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 22 \
#   --dec_in 22 \
#   --c_out 22 \
#   --train_epochs 10 \
#   --itr 1 --batch_size 32 --learning_rate 0.0001 >logs/mirae/$model_name'_'mirae'_'final.log

# # Informer
# model_name=Informer
# CUDA_VISIBLE_DEVICES=1 python -u run_longExp.py \
#   --is_training 1 \
#   --x_data_path ../Data/x_H.npy \
#   --y_data_path ../Data/y_H.npy \
#   --model_id mirae_Informer \
#   --model $model_name \
#   --data mirae \
#   --des 'Exp' \
#   --loss mse \
#   --feature MS \
#   --seq_len 72 \
#   --pred_len 12 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 22 \
#   --dec_in 22 \
#   --c_out 22 \
#   --train_epochs 10 \
#   --itr 1 --batch_size 32 --learning_rate 0.0001 >logs/mirae/$model_name'_'mirae'_'final.log

# Autoformer
model_name=Autoformer
CUDA_VISIBLE_DEVICES=1 python -u run_longExp.py \
  --is_training 1 \
  --x_data_path ../Data/x_H.npy \
  --y_data_path ../Data/y_H.npy \
  --model_id mirae_Autoformer \
  --model $model_name \
  --data mirae \
  --des 'Exp' \
  --loss mse \
  --feature MS \
  --seq_len 72 \
  --pred_len 12 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 22 \
  --dec_in 22 \
  --c_out 22 \
  --train_epochs 10 \
  --itr 1 --batch_size 32 --learning_rate 0.0001 >logs/mirae/$model_name'_'mirae'_'final.log

# SCINet
model_name=SCINet
CUDA_VISIBLE_DEVICES=2 python -u run_longExp.py \
  --is_training 1 \
  --x_data_path ../Data/x_H.npy \
  --y_data_path ../Data/y_H.npy \
  --model_id mirae_SCINet \
  --model $model_name \
  --data mirae \
  --des 'Exp' \
  --hidden_size 4 \
  --loss mae \
  --kernel 5 \
  --dropout 0.5 \
  --feature 'S' \
  --num_stacks 1 \
  --num_levels 3 \
  --seq_len 72 \
  --pred_len 12 \
  --label_len 12 \
  --train_epochs 100 \
  --itr 1 --batch_size 32 --learning_rate 0.0001 >logs/mirae/$model_name'_'mirae'_'final.log
    
# # # SCINet_decom
# model_name=SCINet_decom
# CUDA_VISIBLE_DEVICES=1 python -u run_longExp.py \
#   --is_training 1 \
#   --x_data_path ../Data/x_H.npy \
#   --y_data_path ../Data/y_H.npy \
#   --model_id mirae_SCINet_decom \
#   --model $model_name \
#   --data mirae \
#   --des 'Exp' \
#   --hidden_size 1 \
# --loss mse \
#   --dropout 0.5 \
#   --num_stacks 2 \
#   --num_levels 3 \
#   --seq_len 72 \
#   --pred_len 12 \
#   --label_len 12 \
#   --train_epochs 1 \
#   --itr 1 --batch_size 256 --learning_rate 0.0001 >logs/LongForecasting/$model_name'_'mirae'_'stack2+level3.log
    