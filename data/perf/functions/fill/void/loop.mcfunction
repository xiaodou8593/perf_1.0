#perf:fill/void/loop

# 在这里写测试命令
scoreboard players operation x int = perf_loop int
execute store result storage perf:io x double 1 run scoreboard players operation x int %= 9 int
function perf:fill/void/run

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:fill/void/loop