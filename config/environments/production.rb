Rails.application.configure do
  config.cache_classes = true                                                                                                                  
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.assets.compress = true
  config.assets.compile = true
  config.assets.digest = true
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.log_level = :info
  #config.log_tags = [ :request_id ]
  config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect'

  #config.serve_static_assets = true
  config.assets.serve_static_files = true

  config.assets.js_compressor = :uglifier

  config.cache_store = :dalli_store, '127.0.0.1:11211', {:value_max_bytes => 1024 * 5000 }#5M
  config.action_dispatch.rack_cache = {
    :metastore    => Dalli::Client.new('127.0.0.1:11211', { :namespace => "stock_rails_cache", :compress => true , :value_max_bytes => 1024 * 2000 }),
    :entitystore  => 'file:tmp/cache/rack/body',
    :allow_reload => false
  }

  config.eager_load = true
  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?
  config.log_formatter = ::Logger::Formatter.new
  #config.force_ssl = true
  #config.ssl_options = { hsts: false }

  if ENV["RAILS_LOG_TO_STDOUT"].present?
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger = ActiveSupport::TaggedLogging.new(logger)
  end

  config.active_record.dump_schema_after_migration = false
end
