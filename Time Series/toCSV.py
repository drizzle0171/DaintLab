import csv

content = []
with open(f'./Time Series/Data/SCADA_HISTORY_DATA2_2.csv') as f:
    reader = csv.reader(f)
    for row in reader:
        values = str(row[1]).replace('"', '').split(';')
        row[1] = values
        content.append(row)

f = open(f'./Time Series/Data/SCADA_HISTORY_DATA2_2.csv', 'w', encoding='UTF-8')
print('open file')
with open('./Time Series/data_description.csv', 'r', encoding='UTF_8') as db_info:
    info = db_info.readlines()[1:][1][2:]
    f.write(info + '\n')
for row in content:
    for one in row: 
        if type(one) == list:
            for i in range(len(one)):
                f.write(one[i] + ',')
        elif one == 'savingtime':
            break
        else:
            f.write(one + ',')
    f.write('\n')
f.close()
print('Done')