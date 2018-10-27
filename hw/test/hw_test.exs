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

  test "Create Company" do
    name = "TestName"
    description = "TestDescription"
    competences = ["Software Development", "Analysis"]
    assert %{Name: name, Desc: description, Comps: competences} = Hw.createCompany(name, description, competences) 
  end

  test "Add competence" do
    name = "TestName"
    description = "TestDescription"
    competences = ["Software Development", "Analysis"]
    competence = "Testing"
    assert %{Name: name, Desc: description, Comps: ["Software Development", "Analysis", "Testing"]} = Hw.addCompetence(Hw.createCompany(name, description, competences), competence) 
  end

  test "Add Project to Company" do
    name = "TestName"
    description = "TestDescription"
    start_date = "20.01.2018"
    end_date = "05.02.2018"
    competences = ["Software Development", "Analysis"]
    project = Hw.createProject(name, description, start_date, end_date)
    assert %{Name: name, Desc: description, Comps: competences, Projects: [project]} = Hw.addCompetence(Hw.createCompany(name, description, competences), project) 
  end
end
