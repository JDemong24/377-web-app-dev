import math
def checkPrime(num):
    for i in range(2,int(math.sqrt(num))+1):
        if (num%i==0):
            return False
    return True

def pt7():
    count=[]
    for i in range(2,105000):
        if checkPrime(i):
            count.append(i)


    print(count[10000])
    




pt7()