#perf:powerload/loop

# 在这里写测试命令
data modify storage perf:io test set value "abc"
data modify storage perf:io test set value "def"

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:powerload/loop