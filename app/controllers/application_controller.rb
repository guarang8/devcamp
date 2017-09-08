class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
  protect_from_forgery with: :reset_session, if: ->{request.format.json?}

  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent
  
end