#
#   musicologist.jl
#   musicologist
#
#   Copyright (c) 2017-2018 Shota Shimazu. All rights reserved.
#


# Precompile before running
__precompile__(true)


# Main Module
module Musicologist

# Includes
include("system/warnings.jl")
include("macros.jl")
include("types.jl")
include("enum.jl")
include("midi/midi.jl")
include("exe.jl")
include("console.jl")
include("harmony/chord-spacing.jl")

end
