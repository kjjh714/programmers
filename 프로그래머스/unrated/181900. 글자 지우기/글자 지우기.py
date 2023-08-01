def solution(my_string, indices):
    temp = []
    for i in range(len(my_string)):
        if i not in indices:
            temp.append(my_string[i])
            answer = ''.join(temp)
    return answer