
import time
start=time.time()

def pt9():
    a=0
    b=1
    c=2
    while a+b+c != 1000 or a**2 + b**2 != c**2:
        a=a+1
        if a>=b:
            a=1
            b=b+1
            if b>=c:
                b=1
                c=c+1
    print(a*b*c)
    duration=time.time()-start
    print(duration)

pt9()