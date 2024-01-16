defmodule LcrTest do
  use ExUnit.Case
  doctest Lcr

  test "greets the world" do
    assert Lcr.hello() == :world
  end
end
