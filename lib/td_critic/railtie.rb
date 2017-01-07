module TdCritic
  class Railtie < Rails::Railtie
    rake_tasks do
      load 'tasks/rubocop.rake' if %w(development test).include?(Rails.env)
    end
  end
end
