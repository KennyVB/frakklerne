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
	    logger.debug "* Accept-Language: #{request.env['HTTP_ACCEPT_LANGUAGE']}"
  		I18n.locale = extract_locale_from_accept_language_header
  		logger.debug "* Locale set to '#{I18n.locale}'"
  	end
  	private
  	def extract_locale_from_accept_language_header
	  	request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
  	end

    def default_url_options(options = {})
      {locale: I18n.locale}
    end
end
