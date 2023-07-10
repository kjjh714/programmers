def solution(my_string, overwrite_string, s):
    diff = len(my_string[s:]) - len(overwrite_string)
    
    if (diff == 0):
        result = my_string[:s] + overwrite_string
    else:
        result = my_string[:s] + overwrite_string + my_string[-diff:]
    return result