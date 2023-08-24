def solution(arr):
    
    a = 0
    prev = arr
    
    while True:
        temp = []
        for i in prev:
            if i >= 50 and i%2 == 0:
                temp.append(int(i/2))
            elif i < 50 and i%2 == 1:
                temp.append(i*2 + 1)
            else:
                temp.append(i)
                
        same = all(a==b for a,b in zip(prev, temp))
        
        if same:
            break
        a += 1
        
        prev = temp
        
    return a