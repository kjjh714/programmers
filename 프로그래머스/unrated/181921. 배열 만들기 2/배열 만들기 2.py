def solution(l, r):
    answer = []
    
    for i in range(l, r+1):
        temp = str(i)
        temp = list(set(temp))
        if '5' in temp:
            temp.remove('5')
            if '0' in temp:
                temp.remove('0')
        if len(temp) == 0:
            answer.append(i)
    if len(answer) == 0 :
        answer = [-1]
        
    return answer