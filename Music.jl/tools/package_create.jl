#
#   package_create.jl
#   tools
#
#   Copyright (c) 2017-2018 Shota Shimazu. All rights reserved.
#


# Includes
include("funcs/warnings.jl")


# Functions

function log(msg::String)
    println("CREATOR: " * msg)
end

function main()
    under_development()    
end

main()
