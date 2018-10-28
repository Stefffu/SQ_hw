defmodule CoverageHwTest do
  use ExUnit.Case
  doctest CoverageHw

  test "greets the world" do
    assert CoverageHw.hello() == :world
  end

  test "LoopDeLoop1" do
    assert CoverageHw.loopDeLoop1("seven77", 9) == :ok
    assert CoverageHw.loopDeLoop1("seven77", 11) == :ok
    assert CoverageHw.loopDeLoop1("The Game", 5) == "won"
  end

  test "LoopDeLoop2" do
    assert CoverageHw.loopDeLoop2("test123") == "empty"
  end

  test "loops 3 and 4" do
    assert CoverageHw.loopDeLoop3(3) == 0
    assert CoverageHw.loopDeLoop4(4) == 0
    assert CoverageHw.loopDeLoop3(-3) == -3

  end

  test "fun1" do
    assert CoverageHw.fun1(3) == 6
  end

end
