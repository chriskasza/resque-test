# config/initializers/resque.rb

Resque.redis = 'http://localhost:6379'
Resque.after_fork = Proc.new { ActiveRecord::Base.establish_connection }