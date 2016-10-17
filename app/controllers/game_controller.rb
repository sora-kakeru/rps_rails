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

    @result =
    if @user_move == @computer_move
      "tie"
    elsif @user_move == "paper" && @computer_move == "rock"
      "won"
    elsif @user_move == "paper" && @computer_move == "scissors"
      "lost"
    elsif @user_move == "scissors" && @computer_move == "paper"
      "won"
    elsif @user_move == "scissors" && @computer_move == "rock"
      "lost"
    elsif @user_move == "rock" && @computer_move == "paper"
      "lost"
    else
      "won"
    end

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
