defmodule Hw do
  @moduledoc """
  Documentation for Hw.
  """


  def createProject(name, desc, startDate, endDate) do
    %{Name: name, Desc: desc, StDt: startDate, EnDt: endDate}
  end

  def createCompany(name, desc, comps) do
    %{Name: name, Desc: desc, Comps: comps}
  end

  def addCompetence(%{Name: name, Desc: desc, Comps: comps}, competence) do
    %{Name: name, Desc: desc, Comps: comps ++ [competence]}
  end
end
