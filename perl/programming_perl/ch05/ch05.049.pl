@oldhues = ("bluebird", "bluegrass",  "bluefish", "the blues");
for (@newhues = @oldhues) { s/blue/red/ }
say "@newhues";           # prints: redbird redgrass redfish the reds
