#perf:store_pos/base/loop

# 在这里写测试命令
scoreboard players operation z int = perf_loop int
scoreboard players operation j int = perf_loop int
scoreboard players operation z int /= 10000 int
execute store result score x int store result score y int run scoreboard players operation j int %= 10000 int
scoreboard players operation y int /= 100 int
scoreboard players operation x int %= 100 int

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:store_pos/base/loop