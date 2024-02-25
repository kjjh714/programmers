def solution(myString, pat):
    
    temp = ''
    for i in myString:
        if i == 'A': i = 'B'
        else: i = 'A'
        temp += i
    
    if temp.find(pat) != -1:
        answer = 1
    else: answer = 0
    
    return answer