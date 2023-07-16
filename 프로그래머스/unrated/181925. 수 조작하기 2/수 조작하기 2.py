def solution(numLog):
    answer = ''
    dic = {1:'w', -1:'s', 10:'d', -10:'a'}
    
    for i in range(len(numLog) - 1):
        diff = numLog[i+1] - numLog[i]
        
        answer = answer + dic[diff]
    
    return answer