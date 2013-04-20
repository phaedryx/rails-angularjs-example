# include the same modules as rails-api
class ApiController < ActionController::Metal
  include ActionController::HideActions
  include ActionController::UrlFor
  include ActionController::Redirecting
  include ActionController::Rendering
  include ActionController::Renderers::All
  include ActionController::ConditionalGet
  include ActionController::MimeResponds
  include ActionController::RackDelegation
  include ActionController::ForceSSL
  include ActionController::DataStreaming
  include AbstractController::Callbacks
  include ActionController::Rescue
  include ActionController::Instrumentation

  respond_to :json
end
