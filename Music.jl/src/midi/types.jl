#
#   types.jl
#   musicologist
#
#   Copyright (c) 2017-2018 Shota Shimazu. All rights reserved.
#

mutable struct MIDINote
    value::UInt8
    duration::UInt
    channel::UInt8
    velocity::UInt8
end

mutable struct MIDITrack
    #
end

mutable struct MIDITick
    #
end
