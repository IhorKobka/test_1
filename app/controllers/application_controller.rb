class ApplicationController < ActionController::API
  include ErrorsHandler
  include JsonResponseable
end
