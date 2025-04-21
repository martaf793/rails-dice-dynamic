class DiceController < ApplicationController
	def home
    render({:template => "game_templates/home"}) 
  end 
  def values
    @n1_value=params.fetch("n1").to_i
    @n2_value=params.fetch("n2").to_i
    @rolls=[]
    @n1_value.times do
      n=rand(1..@n2_value)
      @rolls.push(n)
  end
	  render({:template => "game_templates/values"}) 
  end
end
