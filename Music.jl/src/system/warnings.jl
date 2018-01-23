#
#   warnings.jl
#   musicologist
#
#   Copyright (c) 2017-2018 Shota Shimazu. All rights reserved.
#


module Warnings

function not_implemented()
    println("This function is not implemented!")
end

function unstable()
    println("This part is not stable.")
end

end


macro unstable()
    return :( println("Hello, macro") )
end
