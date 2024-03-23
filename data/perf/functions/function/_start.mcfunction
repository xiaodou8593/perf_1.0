#perf:function/_start

data modify storage perf:io temp set value ["function/base", "function/macro"]
data modify storage perf:io afk prepend from storage perf:io temp[]