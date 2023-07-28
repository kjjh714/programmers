def solution(my_string, queries):
    my_string_list = list(my_string)
    for s, e in queries:
        temp = list(reversed(my_string_list[s : e+1]))
        my_string_list[s : e+1] = temp
        answer = ''.join(my_string_list)
        
    return answer