import pyautogui

pyautogui.position()


def move_to(x, y):
    a = int(x)
    b = int(y)
    #pyautogui.moveTo(a, b)
    pyautogui.moveTo(a, b, duration=1)

def mouse_click(x, y):
    a = int(x)
    b = int(y)
    pyautogui.click(a, b)

def mouse_drag(x, y):
    a = int(x)
    b = int(y)
    pyautogui.dragTo(a, b, 1, button='left')

def three_arguments(a1, a2, a3):
    print("Keyword got three arguments '%s', '%s' and '%s'." % (a1, a2, a3))

#move_to(10,10)
#mouse_drag(960,515)