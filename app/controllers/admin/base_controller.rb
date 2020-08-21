class Admin::BaseController < ApplicationController
   layout 'layouts/adminweb'
  before_action :authenticate_user!
  before_action :admin_required

  def admoin_required
    if !current_user.admin?
      redirect_to "/", alert: "You are not admin"
    end
  end

end
