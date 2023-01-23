def pt3():
    num1=600851475143
    num2=2
    while num2<num1:
        while num1%num2==0:
            num1=num1/num2
        num2=num2+1
    print(num1)

pt3()