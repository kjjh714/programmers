# def solution(a, b):
#     ab = str(a) + str(b)
#     ba = str(b) + str(a)
    
#     if ab == ba:
#         result = int(ab)
#     elif ab > ba:
#         result = int(ab)
#     else:
#         result = int(ba)
    
#     return result

def solution(a, b):
    result = max(int(str(a)+str(b)), int(str(b)+str(a)))
    return result
