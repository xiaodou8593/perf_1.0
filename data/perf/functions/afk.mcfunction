#perf:afk

data modify storage perf:io testing set from storage perf:io afk[0]
data remove storage perf:io afk[0]
function perf:afk_run with storage perf:io {}