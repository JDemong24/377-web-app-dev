def pt2():
    value2=0
    value1=1
    value3=0
    sum=0
    while value3<=4000000:
        value3=value1+value2
        if value3%2==0:
            sum=sum+value3
        value1=value2
        value2=value3
    print(sum)
pt2()