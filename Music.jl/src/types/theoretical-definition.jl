#
#   theoretical-definition.jl
#   musicologist
#
#   Copyright (c) 2017-2018 Shota Shimazu. All rights reserved.
#


struct Register <: Definition
    start_from::Integer
    end_to::Integer

    export Register
end



struct Prohibition <: State
    status::Integer
    name::String

    export Prohibition
end

struct Regular <: Definition
    status::Integer
    aspect::String

    export Regular
end
