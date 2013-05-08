class ApiController < ActionController::Metal
  include ActionController::Helpers
  include ActionController::HideActions
  include ActionController::Redirecting
  include ActionController::Rendering
  include ActionController::Renderers::All
  include ActionController::ConditionalGet
  include ActionController::MimeResponds
  include ActionController::Cookies
  include ActionController::RequestForgeryProtection
  include ActionController::ForceSSL
  include AbstractController::Callbacks
  include ActionController::ParamsWrapper
  include ActionController::Instrumentation

  module ApiCompatibilityMethods
    def cache_store; end
    def cache_store=(*); end
    def assets_dir=(*); end
    def javascripts_dir=(*); end
    def stylesheets_dir=(*); end
    def page_cache_directory=(*); end
    def asset_path=(*); end
    def asset_host=(*); end
    def relative_url_root=(*); end
    def perform_caching=(*); end
    def helpers_path=(*); end
    def allow_forgery_protection=(*); end
    def helper_method(*); end
    def helper(*); end
  end

  extend ApiCompatibilityMethods

  before_filter { request.format = 'json' }
  after_filter { cookies['XSRF-TOKEN'] = form_authenticity_token }

  protect_from_forgery
  respond_to :json

  ActiveSupport.run_load_hooks(:action_controller, self) # for serializers

  def default_serializer_options
    { root: false }
  end

protected

  def verified_request?
    super || form_authenticity_token == request.headers['X_XSRF_TOKEN'] # angular sets this request header
  end
end
