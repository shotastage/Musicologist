#
#   check.jl
#   tools
#
#   Copyright (c) 2017-2018 Shota Shimazu. All rights reserved.
#

function log(msg::String, ;withRun = false, ;command = ``)
    println("CHECKER: " * msg)

    if withRun
        run(command)
    end
end


log("Checking musicologist environment...")
log("DD")
log("LS", withRun = false, command = `ls -a`)
versioninfo()
