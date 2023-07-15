def solution(num_list):
    sum_square = (sum(num_list)**2)
    
    a = 1
    for i in num_list:
        a = a*i
    
    if (a < sum_square):
        answer = 1
    else: answer = 0
    
    return answer