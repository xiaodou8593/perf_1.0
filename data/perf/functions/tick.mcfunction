#perf:tick

execute if score perf_start int matches -1 if data storage perf:io afk[0] run function perf:afk
execute if score perf_start int matches 0 unless entity @e[tag=test_as_entity] run function perf:testing with storage perf:io {}
execute if score perf_start int matches 0 as @e[tag=test_as_entity,limit=1] run function perf:testing with storage perf:io {}
execute if score perf_start int matches 1.. run scoreboard players remove perf_start int 1

# 继续tick
schedule function perf:tick 1t replace