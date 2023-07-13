seq = []
seq_true = []

def solution(a, d, included):
    for i in range(len(included)):
        seq_i = a + d*i
        seq.append(seq_i)
        if included[i]:
            seq_true.append(seq_i)
    
    answer = sum(seq_true)
    
    return answer