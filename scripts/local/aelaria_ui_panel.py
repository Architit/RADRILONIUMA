import tkinter as tk
import subprocess
import time
import threading
import os

def trigger_restart():
    subprocess.run(["bash", "/home/architit/LAM_CORE/RADRILONIUMA/scripts/local/trigger_ssn_rstrt.sh"])

def trigger_exit():
    subprocess.run(["bash", "/home/architit/LAM_CORE/RADRILONIUMA/scripts/local/trigger_ssn_exit.sh"])

root = tk.Tk()
root.attributes("-topmost", True)
root.overrideredirect(True)
root.geometry("40x25+0+0")

menu = tk.Menu(root, tearoff=0, font=("Arial", 11))
menu.add_command(label="🔄 Restart Session", command=trigger_restart)
menu.add_command(label="❌ Exit Session", command=trigger_exit)

def show_menu():
    menu.post(root.winfo_rootx(), root.winfo_rooty() + 25)

btn = tk.Button(root, text="☰", font=("Arial", 12), command=show_menu, bg="#333333", fg="white", bd=0, activebackground="#555555", activeforeground="white")
btn.pack(expand=True, fill='both')

target_window = None

def get_active_window():
    try:
        out = subprocess.check_output(["xdotool", "getactivewindow"]).decode().strip()
        return out
    except:
        return None

def track_window():
    global target_window
    time.sleep(0.5)
    
    # We assume the terminal is the active window when this starts
    target_window = get_active_window()

    while True:
        try:
            if target_window and target_window != "0":
                geo = subprocess.check_output(["xdotool", "getwindowgeometry", target_window]).decode()
                pos_line = [x for x in geo.split('\n') if 'Position:' in x][0]
                geom_line = [x for x in geo.split('\n') if 'Geometry:' in x][0]
                
                x, y = map(int, pos_line.split(':')[1].split('(')[0].strip().split(','))
                w, h = map(int, geom_line.split(':')[1].strip().split('x'))
                
                # Place button at the top-right corner, inside the window boundary
                # e.g., 50px from right edge, 5px from top
                root.geometry(f"40x25+{x + w - 45}+{y + 5}")
        except Exception as e:
            pass
        time.sleep(0.05)

t = threading.Thread(target=track_window, daemon=True)
t.start()

root.mainloop()
