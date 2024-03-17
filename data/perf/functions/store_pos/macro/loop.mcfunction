#perf:store_pos/macro/loop

# 在这里写测试命令
scoreboard players operation z int = perf_loop int
scoreboard players operation j int = perf_loop int
scoreboard players operation z int /= 10000 int
execute store result score x int store result score y int run scoreboard players operation j int %= 10000 int
scoreboard players operation y int /= 100 int
scoreboard players operation x int %= 100 int
execute store result storage math:io x double 0.0001 run scoreboard players get x int
execute store result storage math:io y double 0.0001 run scoreboard players get y int
execute store result storage math:io z double 0.0001 run scoreboard players get z int
function perf:store_pos/macro/run with storage math:io {}

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:store_pos/macro/loop