import pyautogui

pyautogui.position()


def move_to(a1, a2):
    a = int(a1)
    b = int(a2)
    #pyautogui.moveTo(a, b)
    pyautogui.moveTo(a, b, duration=1)

def three_arguments(a1, a2, a3):
    print("Keyword got three arguments '%s', '%s' and '%s'." % (a1, a2, a3))

#move_to(10,10)