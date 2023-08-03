def solution(n, slicer, num_list):
    for i in range(len(num_list)):
        if n == 1:
            answer = num_list[ : slicer[1]+1]
        elif n == 2:
            answer = num_list[slicer[0] : ]
        elif n == 3:
            answer = num_list[slicer[0] : slicer[1]+1]
        else:
            answer = num_list[slicer[0] : slicer[1]+1 : 2]
    return answer