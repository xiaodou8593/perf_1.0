#perf:function/_expr1

data modify storage perf:io temp set value ["function/macro","function/macro_long"]
data modify storage perf:io afk prepend from storage perf:io temp[]

data modify storage perf:io temp set value ["function/base","function/base_long"]
data modify storage perf:io afk prepend from storage perf:io temp[]

data modify storage perf:io afk prepend value "function/void"