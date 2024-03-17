#perf:macro/_expr1

data modify storage perf:io temp set value ["macro/line_1","macro/line_2","macro/line_3"]
data modify storage perf:io afk prepend from storage perf:io temp[]