#perf:macro/_expr4

data modify storage perf:io temp set value ["execute_0","execute_1","execute_2","execute_3","execute_4"]
data modify storage perf:io afk prepend from storage perf:io temp[]
data modify storage perf:io temp set value ["macro/void","macro/execute_0","macro/execute_1","macro/execute_2","macro/execute_3","macro/execute_4"]
data modify storage perf:io afk prepend from storage perf:io temp[]