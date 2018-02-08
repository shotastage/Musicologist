#
#   midijl.jl
#   musicologist
#
#   Copyright (c) 2017-2018 Shota Shimazu. All rights reserved.
#

using MIDI

# IO

function read(filename::String)
    return readMIDIfile(filename)
end


function write(filename::String, data)
    writeMIDIfile(filename, data)
end
