def solution(myString):
    temp = myString.split('x')
    answer = []
    
    for i in temp:
        if i != '':
            answer.append(i)
    
    answer.sort()
    
    return answer