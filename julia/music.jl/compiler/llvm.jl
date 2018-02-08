#
#   llvm.jl
#   musicologist
#
#   Copyright (c) 2017-2018 Shota Shimazu. All rights reserved.
#

module LLVMExport

function out_llvm(func)
    code_llvm(func())
end

end
