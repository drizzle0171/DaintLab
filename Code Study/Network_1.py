def solution(n, computers):
    def dfs(c):
        if computers[c][c] == 0:
            return
        else:
            computers[c][c] = 0
            neighbors = [i for i in range(n) if computers[c][i]==1]
            for neighbor in neighbors:
                computers[c][neighbor] = 0
                computers[neighbor][c] = 0
            for neighbor in neighbors:
                dfs(neighbor)

    N_network = 0
    for c in range(n):
        if computers[c][c] != 0:
            dfs(c)
            N_network = N_network + 1
    answer = N_network
    return answer