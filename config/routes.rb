Luhn::Application.routes.draw do
  root :to => 'main#index'
  match "code" => 'main#code'
end
