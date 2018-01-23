#
#   output.jl
#   musicologist
#
#   Copyright (c) 2017-2018 Shota Shimazu. All rights reserved.
#

module CompilerOut


macro file()
    println("This macro is not implemented now!")
end

function touch(name::String)
    # Write empty string
    open(name, "w" ) do fp
        write( fp, "" )
    end
end

end
