def squareSum():
    ss=0
    final=0
    for i in range(1,101):
        ss=ss+i
    final=ss*ss
    return final


def sumSquare():
    SS=0
    sum=0
    final2=0
    for i in range(1,101):
        sum=i*i
        SS=SS+sum
        sum=0
    final2=SS
    return final2


def total(x, y):
    final3=x-y
    print(final3)

total(squareSum(), sumSquare())