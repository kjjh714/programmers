import re

def solution(myStr):
    answer = []
    temp = re.split(r'a|b|c', myStr)
    
    for i in temp:
        if len(i) > 0 :
            answer.append(i)
            
    if len(answer) == 0:
        answer = ["EMPTY"]
                  
    return answer