from data_provider.data_loader import Dataset_mirae_H, Dataset_ETT_hour, Dataset_ETT_minute, Dataset_Custom, Dataset_Pred
from torch.utils.data import DataLoader
import numpy as np
data_dict = {
    'ETTh1': Dataset_ETT_hour,
    'ETTh2': Dataset_ETT_hour,
    'ETTm1': Dataset_ETT_minute,
    'ETTm2': Dataset_ETT_minute,
    'custom': Dataset_Custom,
    'miraeH': Dataset_mirae_H
}


def data_provider(args, flag):
    Data = data_dict[args.data]
    
    if args.data == 'miraeH':        
        
        x = np.load(args.x_data_path)
        y = np.load(args.y_data_path)
        
        train_len = int(x.shape[0] * 0.7)
        val_len = int(x.shape[0] * 0.85)

        
        if flag == 'train':
            print('train')
            x_flag, y_flag = x[:train_len], y[:train_len]
            shuffle_flag = True
            batch_size = args.batch_size
            is_train_flag = True
            max_x_flag = None,
            min_x_flag = None
            
        elif flag == 'val':
            print('val')
            x_train = x[:train_len]
            x_flag, y_flag = x[train_len:val_len], y[train_len:val_len]
            shuffle_flag = False
            batch_size = args.batch_size
            is_train_flag = False
            max_x_flag = np.max(x_train)
            min_x_flag = np.min(x_train)
            
        else:
            print('test')
            x_train = x[:train_len]
            x_flag, y_flag = x[val_len:], y[val_len:]
            shuffle_flag = False
            batch_size = args.batch_size
            is_train_flag = False
            max_x_flag = np.max(x_train)
            min_x_flag = np.min(x_train)
        
        data_set = Data(
            x=x_flag,
            y=y_flag,
            max_x = max_x_flag,
            min_x = min_x_flag,
            is_train=is_train_flag
            )
        
        data_loader = DataLoader(
            data_set,
            batch_size=batch_size,
            shuffle=shuffle_flag,
            num_workers=args.num_workers,
            )
    
    else:
        timeenc = 0 if args.embed != 'timeF' else 1

        if flag == 'test':
            print('test')
            shuffle_flag = False
            drop_last = True
            batch_size = args.batch_size
            freq = args.freq
        elif flag == 'pred':
            print('pred')
            shuffle_flag = False
            drop_last = False
            batch_size = 1
            freq = args.freq
            Data = Dataset_Pred
        else:
            print('other')
            shuffle_flag = True
            drop_last = True
            batch_size = args.batch_size
            freq = args.freq

        print(flag, len(data_set))
        
        data_set = Data(
        root_path=args.root_path,
        data_path=args.data_path,
        flag=flag,
        size=[args.seq_len, args.label_len, args.pred_len],
        features=args.features,
        target=args.target,
        timeenc=timeenc,
        freq=freq
        )
        
        data_loader = DataLoader(
            data_set,
            batch_size=batch_size,
            shuffle=shuffle_flag,
            num_workers=args.num_workers,
            drop_last=drop_last)
    
    return data_set, data_loader
