#perf:function/base_1/loop

# 在这里写测试命令
scoreboard players operation temp int = perf_loop int
execute store result storage perf:io temp int 1 run scoreboard players operation temp int %= 9 int
function perf:function/base_1/run

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:function/base_1/loop