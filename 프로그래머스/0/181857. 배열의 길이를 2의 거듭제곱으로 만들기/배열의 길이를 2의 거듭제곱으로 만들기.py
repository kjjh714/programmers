def solution(arr):
    temp = [1,2,4,8,16,32,64,128,256,512,1024]
    
    for i in range(len(temp)):
        if temp[i] >= len(arr):
            n = i
            break
    arr += [0]*(temp[n] - len(arr))
    
    return arr