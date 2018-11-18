return unless Rails.env.production?

MAXIMUM_SENTRIES_ENQUEUED = 100

Raven.configure do |config|
  config.async = lambda do |event|
    if Sidekiq::Queue.new('sentries').size <= MAXIMUM_SENTRIES_ENQUEUED
      SentryJob.perform_later(event)
    else
      Rails.logger.warn "Too many sentries enqueued. We drop this one: #{event.inspect}"
    end
  end
end
