class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # 認証をしてないユーザーは、認証に飛ばす。
  before_action :authenticate_user!, unless: :devise_controller?
end
