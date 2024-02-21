#perf:_entities
# 把测试环境中的实体数量增加(或试图减少)到给定值
# 输入{<inp,int>}, 执行位置

kill @e[tag=perf_entity]
execute store result score perf_loop int if entity @e
execute if score perf_loop int < inp int run function perf:entites_loop