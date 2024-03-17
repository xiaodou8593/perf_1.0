#perf:benchmark/_start

data modify storage perf:io temp set value ["base","scb_add"]
data modify storage perf:io afk prepend from storage perf:io temp[]