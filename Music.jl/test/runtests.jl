using Musicologist
using Base.Test


@testset "test_prepare" begin
    @testset "test" begin
        @test sum([1, 2]) == 3
        @test println("Testing has been started!") == nothing
    end

    @testset "module_console_test" begin
    end
end
