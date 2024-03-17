#perf:help/loop

# 在这里写测试命令
help

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:help/loop