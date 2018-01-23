#
#   using_midi.jl
#   musicologist
#
#   Copyright (c) 2017-2018 Shota Shimazu. All rights reserved.
#

using MIDI


function writeMIDI(filename::String)
    file = nothing

    writeMIDIfile(filename, file)
end


function loadMIDI(filename::String)
    midi = readMIDIfile(filename)

    return midi
end
