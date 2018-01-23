#
#   IO.jl
#   musicologist
#
#   Copyright (c) 2017-2018 Shota Shimazu. All rights reserved.
#

mutable struct MSMIDIFile
    name::String
    atPath::String
    timestamp::Timer
end

function MSopen(filename::String)
    # Not implemented
    Warnings.not_implemented()
    
    f = open(filename)


    close(f)
end

function MSclose(filename::String)
    # Not implemented
    Warnings.not_implemented()
end

function MSread(filename::String)
    # Not implemented
    Warnings.not_implemented()
end

function MSwrite(filename::String)
    # Not implemented
    Warnings.not_implemented()
end
