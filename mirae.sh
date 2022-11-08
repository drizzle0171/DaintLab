# add --individual for DLinear-I
if [ ! -d "./mirae/logs" ]; then
    mkdir ./mirae/logs
fi

if [ ! -d "./mirae/logs/LongForecasting" ]; then
    mkdir ./mirae/logs/LongForecasting
fi

# # LSTM
# model_name=LSTM
# CUDA_VISIBLE_DEVICES=7 python -u run_longExp.py \
#   --is_training 1 \
#   --x_data_path ../Data/x_H.npy \
#   --y_data_path ../Data/y_H.npy \
#   --model_id miraeH_LSTM \
#   --model $model_name \
#   --data miraeH \
#   --des 'Exp' \
#   --loss mse\
#   --input_size 22 \
#   --hidden_size 128\
#   --pred_len 12 \
#   --train_epochs 200 \
#   --itr 1 --batch_size 256 --learning_rate 0.001 >logs/LongForecasting/$model_name'_'miraeH.log

# # Linear
# model_name=Linear
# CUDA_VISIBLE_DEVICES=6 python -u run_longExp.py \
#   --is_training 1 \
#   --x_data_path ../Data/x_H.npy \
#   --y_data_path ../Data/y_H.npy \
#   --model_id miraeH_Linear \
#   --model $model_name \
#   --data miraeH \
#   --des 'Exp' \
#   --loss mse\
#   --seq_len 72 \
#   --pred_len 12 \
#   --train_epochs 200 \
#   --itr 1 --batch_size 256 --learning_rate 0.001 >logs/LongForecasting/$model_name'_'miraeH.log

# # NLinear
# model_name=NLinear
# CUDA_VISIBLE_DEVICES=5 python -u run_longExp.py \
#   --is_training 1 \
#   --x_data_path ../Data/x_H.npy \
#   --y_data_path ../Data/y_H.npy \
#   --model_id miraeH_Nlinear \
#   --model $model_name \
#   --data miraeH \
#   --des 'Exp' \
#   --loss mse\
#   --seq_len 72 \
#   --pred_len 12 \
#   --train_epochs 200 \
#   --itr 1 --batch_size 256 --learning_rate 0.001 >logs/LongForecasting/$model_name'_'miraeH.log

# # DLinear
# model_name=DLinear
# CUDA_VISIBLE_DEVICES=4 python -u run_longExp.py \
#   --is_training 1 \
#   --x_data_path ../Data/x_H.npy \
#   --y_data_path ../Data/y_H.npy \
#   --model_id miraeH_DLinear \
#   --model $model_name \
#   --data miraeH \
#   --des 'Exp' \
#   --loss mse\
#   --seq_len 72 \
#   --pred_len 12 \
#   --train_epochs 200 \
#   --itr 1 --batch_size 256 --learning_rate 0.001 >logs/LongForecasting/$model_name'_'miraeH.log

# Transformer
model_name=Transformer
CUDA_VISIBLE_DEVICES=7 python -u run_longExp.py \
  --is_training 1 \
  --x_data_path ../Data/x_H.npy \
  --y_data_path ../Data/y_H.npy \
  --model_id miraeH_Transformer \
  --model $model_name \
  --data miraeH \
  --des 'Exp' \
  --loss mse\
  --seq_len 72 \
  --pred_len 12 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 22 \
  --dec_in 22 \
  --c_out 1 \
  --train_epochs 200 \
  --itr 1 --batch_size 256 --learning_rate 0.001 >logs/LongForecasting/$model_name'_'miraeH.log

# Informer
model_name=Informer
CUDA_VISIBLE_DEVICES=7 python -u run_longExp.py \
  --is_training 1 \
  --x_data_path ../Data/x_H.npy \
  --y_data_path ../Data/y_H.npy \
  --model_id miraeH_Informer \
  --model $model_name \
  --data miraeH \
  --des 'Exp' \
  --loss mse\
  --seq_len 72 \
  --pred_len 12 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 22 \
  --dec_in 22 \
  --c_out 1 \
  --train_epochs 200 \
  --itr 1 --batch_size 256 --learning_rate 0.001 >logs/LongForecasting/$model_name'_'miraeH.log

# Autoformer
model_name=Autoformer
CUDA_VISIBLE_DEVICES=7 python -u run_longExp.py \
  --is_training 1 \
  --x_data_path ../Data/x_H.npy \
  --y_data_path ../Data/y_H.npy \
  --model_id miraeH_Autoformer \
  --model $model_name \
  --data miraeH \
  --des 'Exp' \
  --loss mse\
  --seq_len 72 \
  --pred_len 12 \
  --label_len 12 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 22 \
  --dec_in 22 \
  --c_out 1 \
  --train_epochs 200 \
  --itr 1 --batch_size 256 --learning_rate 0.001 >logs/LongForecasting/$model_name'_'miraeH.log
