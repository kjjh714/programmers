def solution(arr, intervals):
    answer = []
    
    for i in arr:
        for a,b in intervals:
            answer = answer + arr[a:b+1]
        break
        
    return answer