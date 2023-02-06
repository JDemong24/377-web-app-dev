from tkinter import *
from tkinter import ttk

root = Tk()

#changes the size of the window
boxSize = ttk.Frame(root, padding=100)
boxSize.grid()
ttk.Label(boxSize, text="Click to Quit").grid(column=0, row=0)
ttk.Button(boxSize, text="Quit", command=root.destroy).grid(column=0, row=1)
ttk.Label(boxSize, text="Click for Bell!").grid(column=0, row=2)
ttk.Button(boxSize, text='Bell Noise', command=root.bell).grid(column=0,row=3)


root.mainloop()