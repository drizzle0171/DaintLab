import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import random
import torch

models = ['FEDformer']
# models = ['Linear']

for model in models:
    mirae_pred_test = np.load(f'./test_results/{model}/pred.npy')
    mirae_true_test = np.load(f'./test_results/{model}/true.npy')
    mirae_x_test = np.load(f'./test_results/{model}/x.npy')
    mirae_loss_test = torch.Tensor(np.load(f'./test_results/{model}/loss.npy'))
    
    mirae_x_time = list(range(72))
    mirae_true_time = list(range(72, 84))

    top_5_ind = torch.topk(mirae_loss_test, dim=0, k=5)[1]
    
    # plot
    plt.rcParams["figure.figsize"] = (18,12)

    for j in range(5):
        plt.clf()
        i = top_5_ind[j].item()
        # train
        plt.plot(mirae_x_time, mirae_x_test[i, :, 0], 'b-', alpha=0.7, label='input')
        plt.plot(mirae_true_time, mirae_true_test[i, :], 'g-', alpha=0.7, label='label')
        plt.plot(mirae_true_time, mirae_pred_test[i, :], 'r-', alpha=0.7, label='pred')

        plt.title(f'Mirae: {model} [TOP{j+1}]', fontsize=25)
        plt.ylabel('Electronic', fontsize=15)
        plt.xlabel('Time Steps', fontsize=15)
        plt.legend()
        plt.savefig(f'./visual/loss-line/mirae_loss_{model}_{j+1}_{i}.png')
        # plt.savefig(f'./visual/loss/mirae_loss_{model}_{j+1}_{i}.pdf')