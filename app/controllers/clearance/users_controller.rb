class Clearance::UsersController < Clearance::BaseController
    before_action :require_login, except: [:new, :create]
    before_action :correct_user, only: [:edit, :update, :destroy]
    
end
