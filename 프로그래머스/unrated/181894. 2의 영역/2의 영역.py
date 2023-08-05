def solution(arr):
    answer = []
    temp = []
    
    for i in range(len(arr)):
        if arr[i] == 2:
            temp.append(i)
    
    if len(temp) > 0 :
        answer = arr[temp[0] : temp[-1]+1]
    else:
        answer = [-1]
    
    
    return answer