defmodule HwTest do
  use ExUnit.Case
  doctest Hw

  test "Create Project" do
    name = "TestName"
    description = "TestDescription"
    start_date = "20.01.2018"
    end_date = "05.02.2018"
    assert %{Name: name, Desc: description, StDt: start_date, EnDt: end_date} = Hw.createProject(name, description, start_date, end_date) 
  end
end
