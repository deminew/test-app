Blog.urls do
  # map(:index).to("/")
  # map(:test).to("/test")
end

=begin

This file contains named routes to be used in the Padrino application. 
To create named routes simply add them to the urls block below.

You can specify simple routes as:

    map(:index).to("/")
    map(:test).to("/test")
  
Routes can also contain query parameters:

    map(:account).to("/the/accounts/:name/and/:id")
    
Routes can also be grouped by a namespaced:

    map :admin do |namespace|
      namespace.map(:show).to("/admin/:id/show")
      namespace.map(:destroy).to("/admin/:id/destroy")
    end
    
Routes can then be accessed in controllers and views:

    url_for(:account, :id => 1, :name => 'first')
    url_for(:admin, :show, :id => 25)
    
To define the controller actions for a named route simply refer to the alias symbol:

    # Configure the routes using the named alias
    get(:account)  { "name: params[:name] - id: params[:id]" }
    get(:accounts) { "I am the body for the url /the/accounts/index" }
    # and for namespaced routes
    namespace :admin do
      get :show do
        "admin show for #{params[:id]}"
      end
    end

=end