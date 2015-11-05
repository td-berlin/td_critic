module TdCritic
  class Railtie < Rails::Railtie
    rake_tasks do
      load 'tasks/rubocop.rake' unless Rails.env.production?
    end
  end
end
