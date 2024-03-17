#perf:macro/line_3_i/loop

execute store result storage perf:io test int 1 run scoreboard players get test int
function perf:macro/line_3_i/run with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
function perf:macro/line_3_i/void with storage perf:io {}
scoreboard players add test int 1

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:macro/line_3_i/loop