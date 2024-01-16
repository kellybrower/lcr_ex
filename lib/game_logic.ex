defmodule Lcr.Player do
  defstruct name: "", chips: 3

  def add_chip(player), do: %Lcr.Player{player | chips: player.chips + 1}
  def remove_chip(player), do: %Lcr.Player{player | chips: player.chips - 1}

  def transfer_chip_to(player, receiver) do
    player |> remove_chip() |> receiver.add_chip()
  end
end

defmodule Lcr.GameState do
  defstruct players: [], current_turn: 0, center_pot: 0

  def next_turn(state) do
    new_turn = (state.current_turn + 1) |> rem(length(state.players))
    %Lcr.GameState{state | current_turn: new_turn}
  end

  def add_to_center_pot(state, amount) do
    %Lcr.GameState{state | center_pot: state.center_pot + amount}
  end
end

defmodule Lcr.Dice do
  @sides ["L", "C", "R", "."]

  def roll do
    Enum.random(@sides)
  end
end
