#
#   setup.jl
#   compiler
#
#   Copyright (c) 2017-2018 Shota Shimazu. All rights reserved.
#

include("functions.jl")

function install(pkg_name::String)
    Pkg.add(pkg_name)
    logger("Installing " * pkg_name * " ...")
end

logger("Installing dependencies...")

install("ArgParse")
