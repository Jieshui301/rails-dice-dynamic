class RollController < ApplicationController
  def home
    render({ :template => "game_templates/dice_roll"})
  end

  # New dynamic roll action
  def dynamic_roll
    number_of_dice = params.fetch("number_of_dice").to_i
    number_of_sides = params.fetch("number_of_sides").to_i

    @dice_results = number_of_dice.times.map { rand(1..number_of_sides) }

    render({ :template => "game_templates/dynamic_dice_roll" })
  end
end
