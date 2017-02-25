def nudge_subplot(subp, dy):
    """A helper function to move subplots."""
    
    sp_ax=subp.get_position()
    sp.set_position([sp_ax.x0, sp_ax.y0+dy, 
        sp_ax.x1-sp_ax.x0, sp_ax.y1-sp_ax.y0])

from pylab import *

# values to plot
t = arange(5)
y = array([1,  2, -1,  1, -2])

plot_cmds = [
    "plot(y)",
    "plot(-y)",
    "plot(y**2)",
    "plot(sin(y))"
    ]

figure()
for i, plot_cmd in enumerate(plot_cmds):
    sp = subplot(2, 2, i+1)
    if i == 1: nudge_subplot(sp, 0.02)
    if i == 3: nudge_subplot(sp, -0.02)
    exec plot_cmd
    title(plot_cmd, fontsize='large')
    xlabel('x values')

show()