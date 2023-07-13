def solution(ineq, eq, n, m):
    if ineq == "<":
        if eq == "=":
            result = 1 if (n <= m) else 0
        else:
            result = 1 if (n < m) else 0
    else:
        result = 1 if (n >= m) else 0
    
    return result


# 다른 사람 방법---------------------------------------
answer = 0

def solution(ineq, eq, n, m):
    if n > m and ineq = ">":
        answer = 1
    elif n < m and ineq = "<":
        answer = 1
    elif n==m and eq == "=":
        answer = 1

    return answer
