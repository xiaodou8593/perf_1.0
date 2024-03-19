#perf:random/_start

data modify storage perf:io temp set value ["random/void","random/base","random/macro"]
data modify storage perf:io afk prepend from storage perf:io temp[]