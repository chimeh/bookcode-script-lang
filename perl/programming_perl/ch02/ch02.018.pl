@days{'Jan','Feb'}       # Ok.
@days{"Jan","Feb"}       # Also ok.
@days{ Jan,  Feb }       # Kinda wrong (breaks under use strict)
