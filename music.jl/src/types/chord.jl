#
#   chord.jl
#   musicologist
#
#   Copyright (c) 2017-2018 Shota Shimazu. All rights reserved.
#


struct Chord <: ChordAbs
    value::Array{Float64}

    export Chord
end

struct ChordArray <: ChordAbs
    value::Array{Array{Float64}}

    export ChordArray
end
