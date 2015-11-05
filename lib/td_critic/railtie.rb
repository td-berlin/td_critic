module TdCritic
  class Railtie < Rails::Railtie
    rake_tasks do
      load 'tasks/rubocop.rake' if Rails.env.development?
    end
  end
end
