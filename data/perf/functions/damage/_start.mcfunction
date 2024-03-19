#perf:damage/_start

data modify storage perf:io temp set value ["damage/void","damage/base","damage/macro"]
data modify storage perf:io afk prepend from perf:io temp[]