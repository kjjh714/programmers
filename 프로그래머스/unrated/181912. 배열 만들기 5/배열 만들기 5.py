def solution(intStrs, k, s, l):
    answer = []
    
    for i in intStrs:
        ret = int(i[s : s+l])
        if  ret > k:
            answer.append(ret)
    return answer