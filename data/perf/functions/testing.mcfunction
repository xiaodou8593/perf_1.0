#perf:testing

execute if score perf_test_started int matches 0 run function perf:test_start with storage perf:io {}

worldborder set 1 0
worldborder set 50000001 50000
scoreboard players operation perf_loop int = perf_n int
$execute if score perf_loop int matches 1.. run function perf:$(testing)/loop
execute store result score res int run worldborder get
worldborder set 50000001 0

execute if score perf_avg int matches -1 run scoreboard players operation perf_avg int = res int
scoreboard players operation perf_avg int += res int
scoreboard players operation perf_avg int /= 2 int
scoreboard players operation perf_max int > res int
scoreboard players operation perf_min int < res int

scoreboard players add perf_timer int 1
execute if score perf_timer int >= perf_cnt int run function perf:test_end with storage perf:io {}