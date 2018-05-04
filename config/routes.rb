Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/fibonacci_sequence', to: 'fibonacci#fibonacci_sequence'
end
