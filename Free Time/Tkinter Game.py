# ------------------------------------------------
# Sources
# https://docs.python.org/3/library/tkinter.html
# https://www.educative.io/answers/what-are-the-basic-functions-of-tkinter-in-python
# https://www.pythontutorial.net/tkinter/tkinter-command/
# 
# 
#-------------------------------------------------


from random import randrange  
from tkinter import *
from tkinter import ttk

root = Tk()

# changes the size of the window
boxSize = ttk.Frame(root, padding=150)
boxSize.pack()

# functions
def check():
    print("Checked!")
    return check

ttk.Label(boxSize,text=check).grid(column=1, row=5)


ttk.Label(boxSize, text="Click to Quit").grid(column=0, row=0)
ttk.Button(boxSize, text="Quit", command=root.destroy).grid(column=0, row=1)
ttk.Label(boxSize, text="Click for Bell!").grid(column=0, row=2)
ttk.Button(boxSize, text='Bell Noise', command=root.bell).grid(column=0,row=3)
ttk.Checkbutton(boxSize, text='Bell Noise', command=check).grid(column=0,row=4)

def player1(option):
    print(option)
    if option=='Rock':
        player1move=0
    elif option=='Paper':
        player1move=1
    else:
        player1move=2
    player1move=option
    return player1move

def ai():
    computerChoice=randrange(3)
    if computerChoice==0:
        print('Rock')
    elif computerChoice==1:
        print('Paper')
    else:
        print('Scissors')
    
    return computerChoice



ai()
ttk.Label(boxSize, text=ai).grid(column=5, row=0)
ttk.Button(root, text='Rock', command=lambda: player1('Rock')).pack()
ttk.Button(root, text='Paper',command=lambda: player1('Paper')).pack()
ttk.Button(root, text='Scissors', command=lambda: player1('Scissors')).pack()






root.mainloop()



