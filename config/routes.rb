Rails.application.routes.draw do
  root to: 'glorious#index'

  get 'benchmark/:calculate', to: 'glorious#benchmark', defaults: { calculate: 42 }
end
