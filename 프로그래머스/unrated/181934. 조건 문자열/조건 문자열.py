def solution(ineq, eq, n, m):
    if ineq == "<":
        if eq == "=":
            result = 1 if (n <= m) else 0
        else:
            result = 1 if (n < m) else 0
    else:
        result = 1 if (n >= m) else 0
    
    return result