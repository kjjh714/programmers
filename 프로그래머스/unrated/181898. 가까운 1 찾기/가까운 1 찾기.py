def solution(arr, idx):
    for i in range(len(arr)):
        if i >= idx and arr[i] == 1:
            answer = i
            break
        else:
            answer = -1
    return answer