def solution(strArr):
    dic = {}
    
    for i in strArr:
        length = len(i)
        if length in dic:
            dic[length].append(i)
        else:
            dic[length] =  [i]
        
    max_dic = max(len(dic) for dic in dic.values())
    
    return max_dic