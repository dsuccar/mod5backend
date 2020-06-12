class ApplicationController < ActionController::Base
  protect_from_forgery unless: -> { request.format.json? }
  config.middleware.use ActionDispatch::Flash


end
