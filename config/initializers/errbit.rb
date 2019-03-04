Airbrake.configure do |config|
  config.api_key = '4e23cfc1b8a8af5c912d3ada6b0cc7e8'
  config.host    = 'errbit.genesys.shefcompsci.org.uk'
  config.port    = 443
  config.secure  = config.port == 443
end
