#perf:test_end

data modify storage perf:io temp set value {min:0,max:0,avg:0,n:0,cnt:0}
execute store result storage perf:io temp.min int 1 run scoreboard players get perf_min int
execute store result storage perf:io temp.max int 1 run scoreboard players get perf_max int
execute store result storage perf:io temp.avg int 1 run scoreboard players get perf_avg int
execute store result storage perf:io temp.n int 1 run scoreboard players get perf_n int
execute store result storage perf:io temp.cnt int 1 run scoreboard players get perf_cnt int
$data modify storage perf:class $(testing) set from storage perf:io temp

scoreboard players set perf_test_started int 0
scoreboard players set perf_start int -1

$tellraw @a "$(testing) perf done"
$function perf:$(testing)/_print