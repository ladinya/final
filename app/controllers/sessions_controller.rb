class SessionsController < ApplicationController
  layout false
  skip_before_action :require_user

    def create
    user = User.find_by(email:params["email"])
    if user && user.authenticate(params["password"])
      session["user_id"] = user.id
       redirect_to root_path, notice: "Sweet, you are in!"
    else 
       redirect_to root_path, alert: "No way man"
    end
  end

  def destroy
    session["user_id"] = nil
    redirect_to root_path, notice: "See yoou later!"
  end

end