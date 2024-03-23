#perf:function/_expr2

data modify storage perf:io temp set value ["function/macro","function/macro_1","function/macro_2","function/macro_3"]
data modify storage perf:io afk prepend from storage perf:io temp[]

data modify storage perf:io temp set value ["function/base","function/base_1","function/base_2","function/base_3"]
data modify storage perf:io afk prepend from storage perf:io temp[]

data modify storage perf:io afk prepend value "function/void"