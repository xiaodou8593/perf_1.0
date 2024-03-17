#perf:store_pos/macro/_start
# 开始模板测试

# 设置为文件夹名
data modify storage perf:io testing set value "store_pos/macro"

# 设置测试环境(例如在这里设置实体数量)
kill @e[tag=math_marker]
summon marker 0 11 0 {Tags:["math_marker"],CustomName:'{"text":"math_marker"}',UUID:[I;0,0,0,0]}
tag @e[tag=math_marker,limit=1] add test_as_entity
data modify storage math:io x set value 0.0d
data modify storage math:io y set value 0.0d
data modify storage math:io z set value 0.0d
scoreboard players set 100 int 100
scoreboard players set 10000 int 10000

# 设置开始测试延后时间(防止上一步消耗过大使tps波动)
scoreboard players set perf_start int 10

# 设置测试次数(测试多少个tick)
scoreboard players set perf_cnt int 10

# 设置单次测试递归次数(值必须整除10000000)
scoreboard players set perf_n int 1000000