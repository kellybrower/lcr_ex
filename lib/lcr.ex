defmodule Lcr do
  @moduledoc """
  Entry point for the LCR game.
  """

  alias Lcr.GameLoop

  @doc """
  Starts a new game of LCR with the given player names.

  ## Examples

      iex> Lcr.start_game(["Alice", "Bob", "Charlie"])
      {:game_over, winner}

  """
  def start_game(player_names) do
    GameLoop.start_game(player_names)
  end
end
