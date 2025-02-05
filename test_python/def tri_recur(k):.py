def tri_recurs(k):
    if(k > 0):
        result = k + tri_recurs(k - 1)
        print(result)
    else:
        result = 0
    return result
print("results:")
tri_recurs(6)