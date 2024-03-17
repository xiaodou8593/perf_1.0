#perf:macro/execute_4_rotate/loop

execute store result storage perf:io test int 1 run scoreboard players get test int
function perf:macro/execute_4_rotate/run with storage perf:io {}
scoreboard players add test int 1

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:macro/execute_4_rotate/loop