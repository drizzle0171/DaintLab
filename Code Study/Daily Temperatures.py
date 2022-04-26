temperatures = [30, 60, 90]
cnt = 0
result = []

for i in range(len(temperatures)):
    for j in range(i+1, len(temperatures)):
        if temperatures[i] != max(temperatures[i:]): 
            if temperatures[i] < temperatures[j]:
                cnt += 1
                break
            else:
                cnt += 1
        else:
            cnt = 0
        print(temperatures[i], temperatures[j], cnt, max( temperatures[i:] ))
    result.append(cnt)
    cnt = 0

print(result)