def solution(my_string, queries):
    my_string_list = list(my_string)
    for s, e in queries:
        # temp = list(reversed(my_string_list[s : e+1]))
        temp = my_string_list[s : e+1][::-1]
        my_string_list[s : e+1] = temp
        answer = ''.join(my_string_list)
        
    return answer


# 다른 사람 풀이
def solution(my_string, queries):
    for s,e in queries:
        my_string = my_string[s:] + my_string[s:e+1][::-1] + my_string[e+1:]
        
    return my_string
