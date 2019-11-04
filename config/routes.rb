Rails.application.routes.draw do
	resources :reports
  get 'reports/index'
  #post 'runreport','report#runreport'

match 'runreport', to: 'reports#runreport', via: [:get, :post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
