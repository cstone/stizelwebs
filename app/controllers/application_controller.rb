class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_dynamic_content

  def get_dynamic_content
    @site_title = DynamicContent.get_value(:site_title)
    @home_title = DynamicContent.get_value(:home_title)
    @home_content = DynamicContent.get_value(:home_content)
    @banner_name = DynamicContent.get_value(:banner_name)
    @banner_content = DynamicContent.get_value(:banner_content)
    @contact_name = DynamicContent.get_value(:contact_name)
    @contact_content = DynamicContent.get_value(:contact_content)
  end
end
