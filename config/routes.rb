Rails.application.routes.draw do
  #get '/passwords/:userid' => 'passwords#check_credentials'
get '/passwords' => 'passwords#check'

end
