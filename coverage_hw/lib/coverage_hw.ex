defmodule CoverageHw do
  
  def hello do
    :world
  end

  def fun1(value) do
    (value + value)
  end

  def loopDeLoop1(msg, _) when msg == "The Game" do
    IO.puts "You won the game"
    "won"
  end
  
  def loopDeLoop1(msg, n) when n <= 1 do
    IO.puts msg
  end

  def loopDeLoop1(_, n) when n > 10 do
    IO.puts "Too many loops for this program"
  end

  def loopDeLoop1(msg, n) when n == 7 do
      IO.puts "Lucky message: " <> msg
      loopDeLoop1(msg, n-1)
  end
  
  def loopDeLoop1(msg, n) do
    IO.puts msg
    loopDeLoop1(msg, n-1)
  end

  def loopDeLoop2(msg) when msg == "" do
    "empty"
  end
  
  def loopDeLoop2(msg) do
    IO.puts msg
    loopDeLoop2(String.slice(msg,0,String.length(msg)-1))
  end

  def loopDeLoop3(number) when number<1 do
    number
  end
  def loopDeLoop4(number) when number<1 do
    number
  end
  def loopDeLoop3(number) do
    loopDeLoop4(number-2)
  end
  def loopDeLoop4(number) do
    loopDeLoop3(number+1)
  end

  





end
