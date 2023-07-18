def solution(arr, queries):
    answer = []
    
    for q in queries:
        temp = []
        s,e,k = q[0], q[1], q[2]
        for i in range(s, e+1):
            temp.append(arr[i])
        candidate = [a for a in temp if a > k]
        if len(candidate) > 0:
            minimum = min(candidate)
        else:
            minimum = -1
        answer.append(minimum)
    return answer