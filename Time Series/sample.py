import pymssql, numpy
import matplotlib.pyplot as plt
from scipy import signal
def processRAW(arrayList : numpy.ndarray):
    raw_data_date = numpy.array(arrayList[:,0]).reshape(len(arrayList[:,0]),1)
    raw_data_data = [[float(y) for y in x.split(";")] for x in arrayList[:,1]]
    raw_data_data = numpy.array(raw_data_data)
    raw_data = numpy.hstack((raw_data_date, raw_data_data))
    return raw_data

def plotData(prc, num, div = 1, tf = True, llb = ""):
    prc = processRAW(prc)
    for x in range(0, prc.shape[0]):
        prc[x][num] = prc[x-1][num] if prc[x][num] == 65534 else prc[x][num]
    if(tf == True):
        plt.plot(prc[:,0], prc[:,num]/div, label= llb)
    return (prc[:,0], prc[:,num]/div)

### Request Data From SQL
server = "114.71.51.11:21240"
database = "서울과기대_PMS_log"
username = "sa"
password = "Rceit1!"

cnxn =  pymssql.connect(server , username, password, database)
cursor = cnxn.cursor()
raw_data = list([])

startTime = ""
for x in range(1, 20):
    print("range :", x)
    cursor.execute(
        "SELECT * "+
        "FROM [서울과기대_PMS_log].[dbo].[SCADA_HISTORY_DATA2_{}] ".format(x)+
        "WHERE savingtime BETWEEN \'"+"05-01-2022 00:00:00.000"+"\' AND \'"+"06-02-2022 00:00:00.000"+"\'")
    raw_data.append(numpy.array(cursor.fetchall()))
    print(raw_data)
cnxn.close()
print("testtt")