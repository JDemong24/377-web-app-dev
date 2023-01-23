def pt3():
    num=1
    final=0
    num2=2
    while num<=100:
        while num2%num==0:
            num=num/num2
        num2=num2+1
    num=num+1
    print(final)

pt3()