#
#   macros.jl
#   musicologist
#
#   Copyright (c) 2017-2018 Shota Shimazu. All rights reserved.
#

function warn(str)
    println("This macro" * str * " is not implemented now!")
end

macro menum()
    println("Hello, macro!")
end

macro console()
    warn("console")
end
