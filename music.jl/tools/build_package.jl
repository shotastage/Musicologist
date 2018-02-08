#
#   check.jl
#   tools
#
#   Copyright (c) 2017-2018 Shota Shimazu. All rights reserved.
#

# Includes
include("funcs/warnings.jl")
include("funcs/logger.jl")


function main()
    Logger.out("Updating package meta file...")
    Pkg.update()

    Logger.out("Removing recent package...")
    Pkg.rm("Musicologist")
    Pkg.clone(pwd())

    Logger.out("Building package...")
    Pkg.build("Musicologist")

    Logger.out("Testing package...")
    Pkg.test("Musicologist", coverage=true)
end

main()
