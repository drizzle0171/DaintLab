def solution(n, computers):
    answer = n
    for i in range(len(computers)):
        for j in range(i+1, len(computers[i])):
            if computers[i][j] == 1:
                answer -= 1
    return answer

print(solution(3, [[1,1,0],[1,1,0],[0,0,1]]))