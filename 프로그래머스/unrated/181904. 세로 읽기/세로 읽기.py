def solution(my_string, m, c):
    answer = ''
    temp = []
    
    for i in range(int(len(my_string) / m)):
        temp.append(list(my_string[i*m : (i+1)*m]))
        answer = answer + temp[i][c-1]
    return answer