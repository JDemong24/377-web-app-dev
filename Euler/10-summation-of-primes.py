def pt10():
    total=2000000
    counter=0
    num=2
    count=0
    while counter<10:
        for i in range(2,10):
            if num%i != 0:
                count=count+num
            else:
                num=num+1
        counter=counter+1
    print(count)

pt10()