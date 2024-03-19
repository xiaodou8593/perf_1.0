#perf:damage/void/loop

# 在这里写测试命令
scoreboard players operation temp int = perf_loop int
scoreboard players operation temp int %= 10 int
execute store result storage perf:io temp int 1 run scoreboard players add temp int 1
function perf:damage/void/run

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:damage/void/loop