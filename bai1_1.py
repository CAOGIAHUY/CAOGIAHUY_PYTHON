import tkinter as tk
from tkinter import ttk
from tkinter import scrolledtext
from tkinter import Menu
from tkinter import messagebox as msg

win = tk.Tk()

win.title("Python GUI")

tabControl = ttk.Notebook(win)
tab1 = ttk.Frame(tabControl)
tabControl.add(tab1, text="Tab 1")
tabControl.pack(expand=1, fill="both")

tab2 = ttk.Frame(tabControl)
tabControl.add(tab2, text="Tab 2")
tabControl.pack(expand=1, fill="both")

mighty = tk.LabelFrame(tab1, text='Mighty Python', fg='blue')
mighty.grid(column=0, row=0, padx=8, pady=4)

mighty2 = tk.LabelFrame(tab2, text='The Snake', fg='blue')
mighty2.grid(column=0, row=0, padx=8, pady=4)

def click_me():
    action.configure(text="Hello " + name.get() + " " + number.get())

ttk.Label(mighty, text="Enter a name:").grid(column=0, row=0)
ttk.Label(mighty, text="Choose a number:").grid(column=1, row=0)

for child in mighty.winfo_children():
    child.grid_configure(padx=8)

name = tk.StringVar()
name_entered = ttk.Entry(mighty, width=12, textvariable=name)
name_entered.grid(column=0, row=1)

action = ttk.Button(mighty, text="Click Me!", command=click_me)
action.grid(column=2, row=1)
# action.configure(state="disable")

number = tk.StringVar()
number_chosen = ttk.Combobox(mighty, width=12, textvariable=number)
number_chosen['values'] = (1, 2, 4, 42, 100)
number_chosen.grid(column=1, row=1)
number_chosen.current(0)

chVarDis = tk.IntVar()
check1 = tk.Checkbutton(mighty2, text="Disabled", variable=chVarDis, state='disabled')
check1.select()
check1.grid(column=0, row=4, sticky=tk.W)

chVarUn = tk.IntVar()
check2 = tk.Checkbutton(mighty2, text="UnChecked", variable=chVarUn)
check2.deselect()
check2.grid(column=1, row=4, sticky=tk.W)

chVarEn = tk.IntVar()
check3 = tk.Checkbutton(mighty2, text="Enabled", variable=chVarEn)
check3.deselect()
check3.grid(column=2, row=4, sticky=tk.W)

colors = ["Blue", "Gold", "Red"]

def radCall():
    radSel = radVar.get()
    if radSel == 0: buttons_frame.configure(background=colors[0])
    elif radSel == 1: buttons_frame.configure(background=colors[1])
    elif radSel == 2: buttons_frame.configure(background=colors[2])

radVar = tk.IntVar()

radVar.set(99)

for col in range(3):
    curRad = tk.Radiobutton(mighty2, text=colors[col], variable=radVar, value=col, command=radCall)
    curRad.grid(column=col, row=6, sticky=tk.W)

scrol_w = 30
scrol_h = 3
scr = scrolledtext.ScrolledText(mighty, width=scrol_w, height=scrol_h, wrap=tk.WORD)
scr.grid(column=0, row=5, columnspan=3)

buttons_frame = tk.LabelFrame(mighty2, text='Labels in a Frame', fg='blue')
buttons_frame.grid(column=0, row=7)

ttk.Label(buttons_frame, text="Label1").grid(column=0, row=0, sticky=tk.W)
ttk.Label(buttons_frame, text="Label2").grid(column=1, row=0, sticky=tk.W)
ttk.Label(buttons_frame, text="Label3").grid(column=2, row=0, sticky=tk.W)

name_entered.focus()

#Tạo Menu Bar
menu_bar = Menu(win)
win.config(menu=menu_bar)

file_menu = Menu(menu_bar, tearoff=0) #Tạo menu File
file_menu.add_command(label="New") #Tạo lệnh New trong File
file_menu.add_separator()
file_menu.add_command(label="Exit", command=win.quit)

menu_bar.add_cascade(label="File", menu=file_menu)

def _msgBox():
    msg.showinfo('Python Message Info Box', 'A Python GUI created using tkinter:\nThe year is 2022.')

help_menu = Menu(menu_bar, tearoff=0)
help_menu.add_command(label="About", command=_msgBox)

menu_bar.add_cascade(label="Help", menu=help_menu)

win.mainloop()