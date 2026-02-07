# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :set_current_request_details
  before_action :authenticate

  private

  def authenticate
    redirect_to sign_in_path unless perform_authentication
  end

  def require_no_authentication
    return unless perform_authentication

    flash[:notice] = "You are already signed in"
    redirect_to root_path
  end

  def perform_authentication
    token = cookies.signed[:session_token]
    return nil if token.blank?

    Current.session ||= Session.find_by_id(token)
    cookies.delete(:session_token) unless Current.session
    Current.session
  end

  def set_current_request_details
    Current.user_agent = request.user_agent
    Current.ip_address = request.ip
  end
end
