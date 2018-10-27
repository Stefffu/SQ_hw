defmodule CoverageHwTest do
  use ExUnit.Case
  doctest CoverageHw

  test "greets the world" do
    assert CoverageHw.hello() == :world
  end
end
