
# function returns tic tac toe winners
# tuple w/ 9 elements
#function should return a tuple... first element should be the atom winner; second is players


defmodule TicTacToe do
  def winner(outcome) do
outcome = {:x, :o, :x,:x, :o, :x,:x, :x, :o }

    # {v, v, v,} = outcome
horizontal_match(outcome)

  end

  def horizontal_match(outcome) when {v, _, _, v, _, _, v, _, _,} = outcome do
    {:winner, v}
  end

  def horizontal_match(outcome) when {_, v, _, _, v, _, _, v, _,} = outcome do
    {:winner, v}
  end

  def horizontal_match(outcome) when {_, _,  v, _, _, v, _, _, v,} = outcome do
    {:winner, v}
  end

  def vertical_match(outcome) when {_, _,  v, _, _, v, _, _, v,} = outcome do
    {:winner, v}
  end


end
