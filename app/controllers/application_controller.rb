class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

def admin_required
  if !current_user.admin?
    redirect_to "/", alert: "你壞壞，你不是管理員喔！"
  end
end
end
