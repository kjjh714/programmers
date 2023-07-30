def solution(my_string, is_prefix):
    
    temp = []
    for i in range(len(my_string)):
        temp.append(my_string[:i+1])
        if is_prefix in temp:
            answer = 1
        else:
            answer = 0
            
    return answer