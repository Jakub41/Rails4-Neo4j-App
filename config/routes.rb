Rails.application.routes.draw do
  resources :technologies
  resources :people
  resources :categories
  resources :departments
  resources :companies

  root 'application#index'
  get '/populate_departments' => 'departments#populate_departments'
  get '/categories/new/get_departments' => 'categories#get_departments'
  get '/categories/index/populate_categories' => 'categories#populate_categories'
  get '/technologies/new/getcategory' => 'technologies#getcategory'
  get '/technologies/index/populate_tech' => 'technologies#populate_tech'
  get '/technologies/index/populate_tech_category' => 'technologies#populate_tech_category'
  get '/people/new/getdepartments' => 'people#getdepartments'
  get '/people/new/getcategories' => 'people#getcategories'
  get '/people/new/gettechnology' => 'people#gettechnology'
  get '/people/index/getpeople' => 'people#getpeople'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end