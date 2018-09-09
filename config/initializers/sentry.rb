if Rails.env.production?
  Raven.configure do |config|
    config.async = lambda { |event| SentryJob.perform_later(event) }
  end
end
