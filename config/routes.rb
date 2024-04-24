Rails.application.routes.draw do
  get("/", { :controller => "roll", :action => "home" })

  get("/dice/:number_of_dice/:number_of_sides", { :controller => "roll", :action => "dynamic_roll" })
end

