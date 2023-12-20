def solution(myString, pat):
    answer = ''
        
    for i in range(len(myString)):
        if myString.endswith(pat,0,i+1):
            answer = myString[:i+1]
            
    return answer
