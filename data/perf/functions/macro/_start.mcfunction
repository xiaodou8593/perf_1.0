#perf:macro/_start

data modify storage perf:io temp set value ["macro/line_1","macro/line_2","macro/line_3","macro/line_3_i","macro/line_3_s","macro/with","macro/nowith"]
data modify storage perf:io afk prepend from storage perf:io temp[]