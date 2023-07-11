def solution(a, b):
    ab = str(a) + str(b)
    ba = str(b) + str(a)
    
    if ab == ba:
        result = int(ab)
    elif ab > ba:
        result = int(ab)
    else:
        result = int(ba)
    
    return result