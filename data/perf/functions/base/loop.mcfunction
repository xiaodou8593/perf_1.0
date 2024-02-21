#perf:base/loop

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:base/loop