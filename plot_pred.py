import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import random

# ------ model's pred ------
auto = np.load('./test_results/Autoformer/pred.npy')
dl = np.load('./test_results/DLinear/pred.npy')
fed = np.load('./test_results/FEDformer/pred.npy')
inf = np.load('./test_results/Informer/pred.npy')
l = np.load('./test_results/Linear/pred.npy')
lstm = np.load('./test_results/LSTM/pred.npy')
nl = np.load('./test_results/NLinear/pred.npy')
# sci = np.load('./test_results/SCINet/pred.npy')
# sci_de = np.load('./test_results/SCINet_decom/pred.npy')
trf = np.load('./test_results/Transformer/pred.npy')

# ------ data & time ------
true = np.load('./test_results/NLinear/true.npy')
true_time = list(range(12))
randint = [random.randint(0, true.shape[0]) for i in range(5)] # random for sequence

# ------ plot ------
plt.rcParams["figure.figsize"] = (18,12)

for i in randint:
    plt.clf()
    
    plt.plot(true_time, true[i, :], 'bo-', alpha=0.7, label='label')
    plt.plot(true_time, auto[i, :], 'gv-', alpha=0.7, label='Autoformer')
    plt.plot(true_time, fed[i, :], 'c,-', alpha=0.7, label='FEDformer')
    plt.plot(true_time, inf[i, :], 'ms-', alpha=0.7, label='Informer')
    plt.plot(true_time, trf[i, :], color='gray', marker='*', alpha=0.7, label='Transformer')
    plt.plot(true_time, l[i, :], 'y-', alpha=0.7, label='Linear')
    plt.plot(true_time, nl[i, :], color='violet', marker='X', alpha=0.7, label='NLinear')
    plt.plot(true_time, dl[i, :], 'r^-', alpha=0.7, label='DLinear')
    plt.plot(true_time, lstm[i, :], color='limegreen', marker='D', alpha=0.7, label='LSTM')
    # plt.plot(true_time, sci[i, :], color='limegreen', marker='D', alpha=0.7, label='SCINet')
    # plt.plot(true_time, sci_de[i, :], color='olive', marker='p', alpha=0.7, label='SCINet-Decompose')

    plt.title('Result of Models', fontsize=25)
    plt.ylabel('Electronics', fontsize=15)
    plt.xlabel('Future Time Steps', fontsize=15)
    plt.legend()
    plt.savefig(f'./visual/pred/all_result_{i}.png')
    # plt.savefig(f'./visual/all_result_{i}.pdf')


