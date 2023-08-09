import tkinter as tk

def greet_instructor():
    name = "Mr. Adefemi Michel"
    greeting = f"Hello, {name}!"
    message = "We are grateful for having you as our instructor."
    message += " Your vast wisdom as a DevOps Engineer is truly inspiring."
    return greeting + " " + message

def show_greeting():
    # This function will be called when the button is clicked.
    greeting = greet_instructor()
    label.config(text=greeting)

# Create a new window
root = tk.Tk()

# Create a label to display the greeting
label = tk.Label(root, text="")
label.pack()

# Create a button that will trigger the greeting
button = tk.Button(root, text="Greet Instructor", command=show_greeting)
button.pack()

# Run the application
root.mainloop()
