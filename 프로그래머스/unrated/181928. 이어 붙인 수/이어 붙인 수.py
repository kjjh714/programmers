def solution(num_list):
    hol = ''
    jjak = ''

    for i in num_list:
        if (i%2 == 1):
            hol = hol + str(i)
        else:
            jjak = jjak + str(i)
    result = int(hol) + int(jjak)
    return result