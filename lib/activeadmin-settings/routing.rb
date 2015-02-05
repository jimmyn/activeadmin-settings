module ActionDispatch::Routing
  class Mapper
    def mount_activeadmin_settings
      scope '/admin', :module => "activeadmin_settings" do
        scope "redactor" do
          resources :pictures,  :only => [:index, :create]
        end
        resources :settings,    :only => [:update]
      end
    end
  end
end