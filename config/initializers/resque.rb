# frozen_string_literal: true

# config/initializers/resque.rb

# Resque.redis = 'http://127.0.0.1:6379'

# #################
Resque.redis = Redis.new(host: '127.0.0.1', port: 6379)
Resque.schedule = YAML.load_file('config/resque_schedule.yml')
Resque.after_fork = proc { ActiveRecord::Base.establish_connection }
# #################

# Resque::Pool.after_prefork do # |job|
#   Resque.redis._client.reconnect
# end
