from collections import defaultdict
id = ["muzi", "frodo", "apeach", "neo"]
report = ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"]
k = 3

def solution(id_list, report, k):
    count_d = defaultdict(int)
    report_d = defaultdict(set)
    answer = [0 for _ in range(len(id_list))]

    for x in report:
        person, reported = x.split()
        report_d[person].add(reported)

    for x in report_d.values():
        for y in x:
            count_d[y] += 1

    for idx, x in enumerate(id_list):
        for y in report_d[x]:
            if count_d[y] >= k:
                answer[idx] += 1
    print(count_d)
    return answer
print(solution(id, report, k))