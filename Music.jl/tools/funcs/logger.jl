#
#   logger.jl
#   tools
#
#   Copyright (c) 2017-2018 Shota Shimazu. All rights reserved.
#

module Logger

function out(msg::String)
    println("TOOLS: " * msg)
end

end
