defmodule Echoer do
  def echo(msg \\ "Hello") do
    IO.puts "#{msg}... #{msg}... #{msg}..."
  end
end
