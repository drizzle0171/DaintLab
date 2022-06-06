import csv
from encodings import utf_8

content = []
with open('./Time Series/DB정보.csv') as f:
    reader = csv.reader(f)
    for row in reader:
        values = str(row[2]).split(';')
        name = str(row[1].replace(',', '/'))
        row[2] = values
        row[1] = name
        content.append(row)

f = open('./Time Series/data_description.csv', 'w', encoding='UTF-8')
print('open file')
print(content)
for row in content:
    for one in row: 
        if type(one) == list:
            for i in range(len(one)):
                f.write(one[i] + ',')
                print('write file')
        else:
            f.write(one + ',')
    f.write('\n')
f.close()