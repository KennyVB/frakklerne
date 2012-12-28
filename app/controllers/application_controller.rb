class ApplicationController < ActionController::Base
  protect_from_forgery
  def has_role?(current_user, role)
      return !!current_user.roles.find_by_name(role.to_s.camelize)
    end
    
    rescue_from CanCan::AccessDenied do |exception|
      redirect_to root_url, :alert => exception.message
    end
    
    before_filter :set_locale
    private

    def set_locale
      I18n.locale = params[:locale] if params[:locale].present?
      # current_user.locale
      # request.subdomain
      # request.env["HTTP_ACCEPT_LANGUAGE"]
      # request.remote_ip
    end

    def default_url_options(options = {})
      {locale: I18n.locale}
    end
end
