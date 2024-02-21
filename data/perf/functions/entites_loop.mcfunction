#perf:entites_loop

summon marker ~ ~ ~ {Tags:["perf_entity"],CustomName:'{"text":"perf_entity"}'}

scoreboard players add perf_loop int 1
execute if score perf_loop int < inp int run function perf:entites_loop