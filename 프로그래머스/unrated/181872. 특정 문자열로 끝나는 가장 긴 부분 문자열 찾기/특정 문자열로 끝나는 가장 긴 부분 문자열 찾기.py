def solution(myString, pat):
    if myString.endswith(pat):
        answer = myString
        
    for i in range(len(myString)):
        if myString.endswith(pat,0,i+1):
            answer = myString[:i+1]
            
    return answer