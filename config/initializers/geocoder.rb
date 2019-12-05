# config/initializers/geocoder.rb
Geocoder.configure(
  # geocoding service request timeout, in seconds (default 3):
  timeout: 5,
  api_key: "" + Rails.application.credentials[:geocoding_key] + ""
)
