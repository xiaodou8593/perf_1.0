#perf:macro/with/loop

function perf:macro/with/void with storage perf:io {}
function perf:macro/with/void with storage perf:io {}
function perf:macro/with/void with storage perf:io {}
function perf:macro/with/void with storage perf:io {}
function perf:macro/with/void with storage perf:io {}

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:macro/with/loop