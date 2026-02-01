Myroute.create!([
  {myprogram_id: 1, title: "hey", description: "blog sur music", myurl: "/facebook"}
])
Framework.create!([
  {name: "ruby on rails", mycode: "rails new MYNAME", mylogincode: "bundle add devise\nrails generate devise:install\nrails generate devise users\nrails db:migrate\nrails generate devise:views users\nrails generate devise:controllers users\necho \"devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'registrations/sessions' }\" > config/routes.rb\necho \"devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'registrations/sessions' }\" > config/routes.rb\necho \"<%if user_signed_in?%><li class=\"nav-item\">        <a class=\"nav-link\" href=\"<%=edit_user_registration_path%>\">edit skills</a>      </li>      <li class=\"nav-item\"><%=button_to \"Log out\", destroy_user_session_path, :method => :delete %></li><%else%><%=button_to \"se connecter\", new_user_session_path, :method => :get %><%end%>\" > app/views/layouts/applications.rb", myroutecode: "rails g controller NOM_DE _MA_ROUTE\necho \"get 'MON_URL', to: 'NOM_DE#_MA_ROUTE'\" > config/routes"}
])
Myprogram.create!([
  {framework_id: 1, title: "blog about music", description: "this is my program", user_id: 1}
])
