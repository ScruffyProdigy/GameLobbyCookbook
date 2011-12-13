name "game-lobby"
description "The basic web server for the game lobby"
  
run_list "recipe[gamelobby::users]","recipe[git]","recipe[redis]","recipe[nginx]","recipe[gamelobby::nginx]","recipe[sqlite]","recipe[rails]","recipe[nodejs]","recipe[application]","recipe[gamelobby::node]"
env_run_lists {}

default_attributes {}
override_attributes {}