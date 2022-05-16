class GamesController < ApplicationController
  def new
    a = ('a'..'z').to_a
    @letters = a.sample(10)
  end

  def grid?
    @letters = params[:letters]
    @response = params[:response]
    @response.chars.all? do |letter|
      @letters.include?(letter)
    end
  end

  def score
    if grid?
#     @response.chars.all? do |letter|
#       @letters.include?(letter)
#     end
    @result = "you win"
    end
  end
end
