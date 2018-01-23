#
#   chord-spacing.jl
#   musicologist
#
#   Copyright (c) 2017-2018 Shota Shimazu. All rights reserved.
#

module Harmony

include("../types.jl")


abstract type HarmonyProtocol
    
end


type HarmonyRegisters <: HarmonyProtocol

    # Constructor or definition only
    soprano::Types.Register
    alto::Types.Register
    tenor::Types.Register
    bass::Types.Register

    # Custom Constructors
    HarmonyRegisters(soprano, alto, tenor, bass) = HarmonyRegisters(1, 2, 3, 4)

    # Methods

    function validate(part::String, notes::Types.ChordArray)

        # Temporary
        return true
    end

    export HarmonyRegisters
end


type ChordSpacing <: HarmonyProtocol

    # Constructors
    chord::Types.ChordArray
    registers::HarmonyRegisters


    function showSpacing()
        return chord
    end

    function makeClose()
        return chord
    end

    function makeOpen()
        return chord
    end

    export ChordSpacing
end


end
