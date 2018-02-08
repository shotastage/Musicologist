#
#   console.jl
#   musicologist
#
#   Copyright (c) 2017-2018 Shota Shimazu. All rights reserved.
#

module Console

### Temp
function not_implemented()
    println("NOT IMPLEMENTED!")
end


"""
Print log on console

Fields:

* `msg::String` message
"""
function log(msg::String)
    println("MUSICOLOGIST: " * msg)
end


"""
Execute shell command

Fields:

* `cmd` is command line ex. `ls -a`
"""
function exe(cmd)
    return readall(cmd)
end


"""
Receive standard input

Fields:

* nothing
"""
function input()
    return readline(STDIN)
end

end
