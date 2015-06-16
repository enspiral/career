ActiveAdmin.setup do |config|

  config.site_title = "Carrers"
  config.comments = false
  config.root_to = 'feedbacks#index'
  config.namespace :admin do |admin|
    admin.build_menu do |menu|
      menu.add :label => "Home", :url => "/", :priority => 0
    end
  end


  config.authentication_method = :authenticate_admin_user!


  config.current_user_method = :current_admin_user

  config.logout_link_path = :destroy_admin_user_session_path

  config.batch_actions = true

 end
