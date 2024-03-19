#perf:attribute/_start

data modify storage perf:io temp set value ["attribute/void","attribute/base","attribute/macro"]
data modify storage perf:io afk prepend from storage perf:io temp[]