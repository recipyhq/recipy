host = ENV['DEFAULT_URL_HOST'] || "#{ENV.fetch('HEROKU_APP_NAME')}.herokuapp.com"
protocol = Rails.application.config.force_ssl ? 'https' : 'http'

Rails.application.routes.default_url_options.merge!(
  host: host,
  protocol: protocol
)
