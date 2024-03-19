#perf:fill/_start

data modify storage perf:io temp set value ["fill/void","fill/base","fill/macro"]
data modify storage perf:io afk prepend from storage perf:io temp[]