class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your logic here

    # In the end, make sure you assign the correct values to the
    #   following two variables:

    @computer_move = ["rock","paper","scissors"].sample
    game_ary = [@user_move, @computer_move]
    if game_ary[0] == game_ary[1]
      result_string = "tied"
    elsif game_ary == ["rock", "paper"] || game_ary == ["paper", "scissors"] || game_ary == ["scissors", "rock"]
      result_string = "lost"
    elsif game_ary == ["scissors", "paper"] || game_ary == ["paper", "rock"] || game_ary == ["rock", "scissors"]
      result_string = "won"
    end

    @result = result_string

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
