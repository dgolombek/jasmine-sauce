require 'sauce/jasmine'

namespace :jasmine do
  namespace :ci do
    desc 'Run Jasmine tests in the cloud'
    task :sauce do
      options = {:port => ENV['PORT'], :server => ENV['SERVER']}
      runner = Sauce::Jasmine::Runner.new(options)
      runner.run
    end
  end
end
