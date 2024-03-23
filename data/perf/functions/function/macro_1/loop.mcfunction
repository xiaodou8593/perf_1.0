#perf:function/macro_1/loop

# 在这里写测试命令
scoreboard players operation temp int = perf_loop int
execute store result storage perf:io temp int 1 run scoreboard players operation temp int %= 9 int
function perf:function/macro_1/run with storage perf:io {}

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:function/macro_1/loop