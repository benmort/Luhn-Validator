Luhn::Application.routes.draw do
  root :to => 'main#index'
  match "result" => 'main#result'
  match "data" => 'main#data'
end
