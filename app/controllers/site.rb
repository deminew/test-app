Blog.controllers do
  get :about, :map => '/about' do
    haml_template 'site/about'
  end
end