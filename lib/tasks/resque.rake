# frozen_string_literal: true

# lib/tasks/resque.rake

require 'resque/tasks'
require 'resque/scheduler/tasks'

namespace :resque do
  task :setup do
    require 'resque'
    require 'resque-scheduler'
  end
end

# require 'resque/tasks'
# require 'resque/scheduler/tasks'

# namespace :resque do
#   task :setup do
#     require 'resque'
#     # require 'resque_scheduler'
#     require 'resque/scheduler'

#     ENV['QUEUE'] = '*'

#     Resque.redis = 'localhost:6379' unless Rails.env == 'production'
#     Resque.schedule = YAML.load_file(
#       File.join(Rails.root, 'config/resque_schedule.yml')
#     )
#   end
# end

# Resque.after_fork = proc { ActiveRecord::Base.establish_connection }

# desc 'Alias for resque:work (To run workers on Heroku)'
# task 'jobs:work' => 'resque:work'
