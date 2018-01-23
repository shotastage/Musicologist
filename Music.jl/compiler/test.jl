#
#   test.jl
#   compiler
#
#   Copyright (c) 2017-2018 Shota Shimazu. All rights reserved.
#

include("llvm.jl")
include("output.jl")

function test_func()
    println("This is test func!")
end

LLVMExport.out_llvm(test_func())
