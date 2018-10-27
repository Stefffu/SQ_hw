defmodule Hw do
  @moduledoc """
  Documentation for Hw.
  """


  def createProject(name, desc, startDate, endDate) do
    %{Name: name, Desc: desc, StDt: startDate, EnDt: endDate}
  end
end
