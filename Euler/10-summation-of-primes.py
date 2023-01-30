import math
def checkPrime(num):
    for i in range(2,int(math.sqrt(num))+1):
        if (num%i==0):
            return False
    return True
def pt10():
    count=0
    for i in range(2,2_000_000):
        if(checkPrime(i)):
            count=count+i

    print(count)

pt10()