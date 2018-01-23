#
#   note.jl
#   musicologist
#
#   Copyright (c) 2017-2018 Shota Shimazu. All rights reserved.
#

include("abstract.jl")


mutable struct Note <: NoteAbs
    value::Float64
    duration::UInt
    position::UInt
    velocity::UInt

    export Note
end


mutable struct Notes <: NoteAbs
    value::Array{Float64}
    duration::Array{UInt}
    position::Array{UInt}
    velocity::Array{UInt}

    export Notes
end


mutable struct OneHotNote <: NoteAbs
    value::Array{Float64}

    export OneHotNote
end


mutable struct OneHotNotes <: NoteAbs
    value::Array{Array{Float64}}

    export OneHotNotes
end
