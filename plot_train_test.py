import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import random

# ______ model's pred ______
# ett_pred_test = np.load('./test_results/ETTh1_/pred.npy')
# ett_true_test = np.load('./test_results/ETTh1_/true.npy')
# ett_x_test = np.load('./test_results/ETTh1_/x.npy')
mirae_pred_test = np.load('./test_results/mirae/pred.npy')
mirae_true_test = np.load('./test_results/mirae/true.npy')
mirae_x_test = np.load('./test_results/mirae/x.npy')
# ett_pred_train = np.load('./train_results/ETTh1_/pred.npy')
# ett_true_train = np.load('./train_results/ETTh1_/true.npy')
# ett_x_train = np.load('./train_results/ETTh1_/x.npy')
# mirae_pred_train = np.load('./train_results/mirae/pred.npy')
# mirae_true_train = np.load('./train_results/mirae/true.npy')
# mirae_x_train = np.load('./train_results/mirae/x.npy')

# ______ data & time ______
# ett_x_time = list(range(96))
# ett_true_time = list(range(96,192))
mirae_x_time = list(range(72))
mirae_true_time = list(range(72, 84))

# randint_ett_train = [random.randint(0, ett_true_train.shape[0]) for i in range(3)] # random for sequence
# randint_ett_test = [random.randint(0, ett_true_test.shape[0]) for i in range(3)] # random for sequence
# randint_mirae_train = [random.randint(0, mirae_true_train.shape[0]) for i in range(3)] # random for sequence
randint_mirae_test = [random.randint(0, mirae_true_test.shape[0]) for i in range(3)] # random for sequence

# ______ plot ______
plt.rcParams["figure.figsize"] = (18,12)

# for i in randint_ett_train:
#     plt.clf()
#     # train
#     plt.plot(ett_x_time, ett_x_train[i, :, 0], 'b-', alpha=0.7, label='input')
#     plt.plot(ett_true_time, ett_true_train[i, :, 0], 'g-', alpha=0.7, label='label')
#     plt.plot(ett_true_time, ett_pred_train[i, :, 0], 'r-', alpha=0.7, label='pred')

#     plt.title('ETTh1: Train', fontsize=25)
#     plt.ylabel('Electronic', fontsize=15)
#     plt.xlabel('Time Steps', fontsize=15)
#     plt.legend()
#     plt.savefig(f'./visual/ett_train_all_result_{i}.png')
#     plt.savefig(f'./visual/ett_train_all_result_{i}.pdf')

# for i in randint_ett_test:
#     plt.clf()
#     # train
#     plt.plot(ett_x_time, ett_x_test[i, :, 0], 'b-', alpha=0.7, label='input')
#     plt.plot(ett_true_time, ett_true_test[i, :, 0], 'g-', alpha=0.7, label='label')
#     plt.plot(ett_true_time, ett_pred_test[i, :, 0], 'r-', alpha=0.7, label='pred')

#     plt.title('ETTh1: Test', fontsize=25)
#     plt.ylabel('Electronic', fontsize=15)
#     plt.xlabel('Time Steps', fontsize=15)
#     plt.legend()
#     plt.savefig(f'./visual/ett_test_all_result_{i}.png')
#     plt.savefig(f'./visual/ett_test_all_result_{i}.pdf')
    
# for i in randint_mirae_train:
#     plt.clf()
#     # train
#     plt.plot(mirae_x_time, mirae_x_train[i, :, 0], 'b-', alpha=0.7, label='input')
#     plt.plot(mirae_true_time, mirae_true_train[i, :], 'g-', alpha=0.7, label='label')
#     plt.plot(mirae_true_time, mirae_pred_train[i, :], 'r-', alpha=0.7, label='pred')

#     plt.title('Mirae: Train', fontsize=25)
#     plt.ylabel('Electronic', fontsize=15)
#     plt.xlabel('Time Steps', fontsize=15)
#     plt.legend()
#     plt.savefig(f'./visual/mirae_train_all_result_{i}.png')
#     plt.savefig(f'./visual/mirae_train_all_result_{i}.pdf')

for i in randint_mirae_test:
    plt.clf()
    # train
    plt.plot(mirae_x_time, mirae_x_test[i, :, 0], 'b-', alpha=0.7, label='input')
    plt.plot(mirae_true_time, mirae_true_test[i, :], 'g-', alpha=0.7, label='label')
    plt.plot(mirae_true_time, mirae_pred_test[i, :], 'r-', alpha=0.7, label='pred')

    plt.title('Mirae: Test', fontsize=25)
    plt.ylabel('Electronic', fontsize=15)
    plt.xlabel('Time Steps', fontsize=15)
    plt.legend()
    plt.savefig(f'./visual/mirae_test_all_result_{i}.png')
    plt.savefig(f'./visual/mirae_test_all_result_{i}.pdf')

